# ~/.config/fish/functions/k8slogs.fish

function k8slogs -d 'Follow logs of a Kubernetes pod'
    kubectl get namespaces --no-headers | fzy -p 'namespace> ' | \
        awk '{ print $1 }' | read -l namespace
    kubectl get pods --no-headers --namespace $namespace | fzy -p 'pod> ' | \
        awk '{ print $1 }' | read -l pod
    kubectl logs -f --since 24h --namespace $namespace $pod
end
