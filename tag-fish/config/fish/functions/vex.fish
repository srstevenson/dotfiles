function vex -d 'Open executable from PATH in visual editor'
    command $VISUAL (type -p "$argv[1]")
end
