
# Blue
function blue {
  echo -e "\n\e[1;36m$1\e[0m\n"
}

# MeshLab
function ml {
    blue "--[ Manager ]-------------------------------------------------------";
    k --context kind-mnger-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-mnger-1 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "--[ Pizza ]---------------------------------------------------------";
    k --context kind-pizza-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-1 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "-------";
    k --context kind-pizza-2 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-2 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "--[ Pasta ]---------------------------------------------------------";
    k --context kind-pasta-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-1 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "-------";
    k --context kind-pasta-2 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-2 get svc -A --field-selector=spec.type=LoadBalancer;
}

# MeshLab Watch
function mlw {
  watch '
    k --context kind-mnger-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-mnger-1 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "-------";
    k --context kind-pizza-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-1 get svc -A --field-selector=spec.type=LoadBalancer;
  '
}
