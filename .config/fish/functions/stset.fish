function stset --description "Sets up SuperTest"
    set SUPERTEST "$PWD"
    set MANPATH $MANPATH "$PWD/man/"
    set PATH $PATH "$PWD/bin/"
end

