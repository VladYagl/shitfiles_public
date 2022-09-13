syn include @FC syntax/framac.vim
syn region framacComment1 matchgroup=framacComment start="/\*@"rs=e-3 end="\*/" contains=@FC
syn region framacComment2 matchgroup=framacComment start="//@"rs=e-3 end="\n" contains=@FC
