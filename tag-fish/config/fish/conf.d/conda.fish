# ~/.config/fish/conf.d/conda.fish

function __activate_conda_env -v PWD
    set -l __dir $PWD
    set -l __env ""

    while test $__dir != $HOME; and test $__dir != /
        if test -f $__dir/.conda-env
            set __env (cat $__dir/.conda-env)

            if set -q $CONDA_DEFAULT_ENV
                if test "$CONDA_DEFAULT_ENV" != $__env
                    activate $__env
                end
            end

            break
        end

        set __dir (dirname $__dir)
    end

    if set -q CONDA_DEFAULT_ENV
        if test -z $__env
            deactivate
        end
    end
end
