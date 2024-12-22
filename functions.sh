
# MeshLab Watch
function mlw {
  watch '
    k --context kind-kube-00 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-kube-00 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n-------\n";
    k --context kind-pasta-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-1 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n-------\n";
    k --context kind-pasta-2 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-2 get svc -A --field-selector=spec.type=LoadBalancer;
  '
}

