#!/usr/bin/env python

from toggl import api, utils
import toggl
import pendulum
import sys


def print_dur(dur):
    print(f'{dur.in_hours():02d}:{dur.in_minutes() % 60:02d}', end='')


config = utils.Config.factory(None)
config.api_token = '6379ff65b56dded8b56cc6520d3e3de1'


current = api.TimeEntry.objects.current(config=config)
if current is not None:
    cur = pendulum.now().diff(pendulum.parse(str(current.start)))
    print_dur(cur)
    print('', current.description[:15], end=' │ ')

    s = cur
else:
    s = pendulum.period(pendulum.now(), pendulum.now())

entries = api.TimeEntry.objects.all_from_reports(pendulum.today(),
                                                 pendulum.now(), config=config)
for entry in entries:
    try:
        fetched_entity = utils.toggl(f'/time_entries/{entry.id}', 'get', config=config)
        s += pendulum.parse(str(entry.start)).diff(pendulum.parse(str(entry.stop)))
    except toggl.exceptions.TogglNotFoundException:
        pass

print_dur(s)
print()
