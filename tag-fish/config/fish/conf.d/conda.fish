# ~/.config/fish/conf.d/conda.fish

function __activate_conda_env -v PWD
    set -l __dir $PWD
    set -l __env ""

    while test $__dir != $HOME; and test $__dir != /
        if test -f $__dir/.conda-env
            set __env (cat $__dir/.conda-env)

            set -q $CONDA_DEFAULT_ENV
            and test "$CONDA_DEFAULT_ENV" != $__env
            and activate $__env

            break
        end

        set __dir (dirname $__dir)
    end

    set -q CONDA_DEFAULT_ENV
    and test -z $__env
    and deactivate
end
