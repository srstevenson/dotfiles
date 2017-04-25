# ~/.config/fish/functions/k8scontext.fish

function k8scontext -d 'Set kubectl context'
    kubectl config get-contexts -o name | fzy -p 'context> ' | \
        xargs kubectl config use-context
end
