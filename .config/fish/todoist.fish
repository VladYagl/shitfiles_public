function __fish_using_command
    set cmd (commandline -opc)
    if [ (count $cmd) -eq (count $argv) ]
        for i in (seq (count $argv))
            if [ $cmd[$i] != $argv[$i] ]
                return 1
            end
        end
        return 0
    end
    return 1
end

function __fish_task_list
    todoist --csv --project-namespace --color list | cut -d',' -f1,4,6 | tr ',' '\t'
end

function __fish_project_list
    todoist --csv --project-namespace --color projects | tr ',' '\t'
end

function __fish_project_names
    todoist --csv --color projects | cut -d',' -f2 | tr ',' '\t'
end

function todolist
    todoist --project-namespace --color --indent list -f "$argv"
end

abbr --add todo 'todoist'
abbr --add tl 'todolist'

complete -c todoist -n '__fish_using_command todoist' \
    -k -f -a '
list\t"Show all tasks"
show\t"Show task detail"
completed-list\t"Show all completed tasks (only premium user)"
add\t"Add task"
modify\t"Modify task"
close\t"Close task"
delete\t"Delete task"
labels\t"Show all labels"
projects\t"Show all projects"
karma\t"Show karma"
sync\t"Sync cache"
quick\t"Quick add a task"
help\t"Shows a list of commands or help for one command"
'

complete -c todoist -n '__fish_using_command todoist show'\
    -k -f -a '(__fish_task_list)'

complete -c todoist -n '__fish_using_command todoist modify'\
    -k -f -a '(__fish_task_list)'

complete -c todoist -n '__fish_using_command todoist m'\
    -k -f -a '(__fish_task_list)'

complete -c todoist -n '__fish_using_command todoist close'\
    -k -f -a '(__fish_task_list)'

complete -c todoist -n '__fish_using_command todoist c'\
    -k -f -a '(__fish_task_list)'

complete -c todoist -n '__fish_using_command todoist delete'\
    -k -f -a '(__fish_task_list)'

complete -c todoist -n '__fish_using_command todoist d'\
    -k -f -a '(__fish_task_list)'

complete -c todoist -n '__fish_contains_opt -s P'\
    -k -f -a '(__fish_project_list)'

complete -c todolist -k -f -a '(__fish_project_names)'
