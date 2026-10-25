function fish_jj_prompt -d 'Write out the Jujutsu prompt'
    command -sq jj; or return 1

    set -l info "$(
        jj log </dev/null 2>/dev/null --no-graph --color=always --revisions @ \
            --config 'colors."prompt changed"={fg="green", bold=true}' \
            --template '
                separate(" ",
                    change_id.shortest(8),
                    bookmarks.join(","),
                    concat(
                        if(!empty, label("prompt changed", "±")),
                        if(conflict, label("conflict", "×")),
                        if(divergent, label("divergent", "≠")),
                    ),
                )
            '
    )"; or return 1

    printf ' %s' $info
end
