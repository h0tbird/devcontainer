
# MeshLab
function ml {
    echo "\n--[ Manager ]---------------------------------------------------\n";
    k --context kind-mnger-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-mnger-1 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n--[ Pizza ]-----------------------------------------------------\n";
    k --context kind-pizza-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-1 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n-------\n";
    k --context kind-pizza-2 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-2 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n--[ Pasta ]-----------------------------------------------------\n";
    k --context kind-pasta-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-1 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n-------\n";
    k --context kind-pasta-2 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-2 get svc -A --field-selector=spec.type=LoadBalancer;
}

# MeshLab Watch
function mlw {
  watch '
    k --context kind-mnger-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-mnger-1 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n-------\n";
    k --context kind-pasta-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-1 get svc -A --field-selector=spec.type=LoadBalancer;
  '
}
