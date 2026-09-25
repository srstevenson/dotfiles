function fish_right_prompt -d 'Write out the right prompt'
    set -q CMD_DURATION; or return
    test $CMD_DURATION -ge 1000; or return

    set -l hours (math --scale=0 "$CMD_DURATION / 3600000")
    set -l mins (math --scale=0 "$CMD_DURATION / 60000 % 60")
    set -l secs (math --scale=0 "$CMD_DURATION / 1000 % 60")

    set -l formatted
    if test $hours -gt 0
        set formatted (printf '%ih%im' $hours $mins)
    else if test $mins -gt 0
        set formatted (printf '%im%is' $mins $secs)
    else
        set formatted (printf '%is' $secs)
    end

    echo -ns (set_color --bold brblack) $formatted (set_color normal) ' '
end
