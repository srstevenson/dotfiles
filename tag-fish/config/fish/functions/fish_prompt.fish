set -g __fish_git_prompt_showdirtystate yes
set -g __fish_git_prompt_showstashstate yes
set -g __fish_git_prompt_showuntrackedfiles yes
set -g __fish_git_prompt_status_order stagedstate dirtystate stashstate untrackedfiles
set -g __fish_git_prompt_char_stagedstate '±'
set -g __fish_git_prompt_char_dirtystate '!'
set -g __fish_git_prompt_char_stashstate '≡'
set -g __fish_git_prompt_char_untrackedfiles '?'
set -g __fish_git_prompt_char_stateseparator ''
set -g __fish_git_prompt_color_branch magenta --bold
set -g __fish_git_prompt_color_branch_done normal
set -g __fish_git_prompt_color_stagedstate green --bold
set -g __fish_git_prompt_color_dirtystate yellow --bold
set -g __fish_git_prompt_color_stashstate red --bold
set -g __fish_git_prompt_color_untrackedfiles red --bold

function fish_prompt -d 'Write out the prompt'
    set -l last_status $status
    set -l normal (set_color normal)

    echo -ns (set_color --bold cyan) (path basename (prompt_pwd)) $normal

    fish_git_prompt ' %s'

    if jobs -q
        echo -ns ' ' (set_color --bold brblack) '&' $normal
    end

    set -l prompt_color red
    if test $last_status -eq 0
        set prompt_color green
    end
    echo -ns ' ' (set_color $prompt_color) '❯' $normal ' '
end
