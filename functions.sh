
# Blue
function blue {
  echo -e "\n\e[1;36m$1\e[0m\n"
}

# MeshLab
function ml {
    blue "--[ Manager \xf0\x9f\x9a\x80 ]-----------------------------------------------------------------";
    k --context kind-mnger-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-mnger-1 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "--[ Pizza \xf0\x9f\x8d\x95 ]-------------------------------------------------------------------";
    k --context kind-pizza-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-1 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "-\xf0\x9f\x91\x86-pizza-1----------\xf0\x9f\x91\x87-pizza-2---------";
    k --context kind-pizza-2 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-2 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "--[ Pasta \xf0\x9f\x8d\x9d ]-------------------------------------------------------------------";
    k --context kind-pasta-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-1 get svc -A --field-selector=spec.type=LoadBalancer;
    blue "-\xf0\x9f\x91\x86-pasta-1----------\xf0\x9f\x91\x87-pasta-2---------";
    k --context kind-pasta-2 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pasta-2 get svc -A --field-selector=spec.type=LoadBalancer;
}

# MeshLab Watch
function mlw {
  watch '
    k --context kind-mnger-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-mnger-1 get svc -A --field-selector=spec.type=LoadBalancer;
    echo "\n-------\n";
    k --context kind-pizza-1 get po -A --field-selector=status.phase!=Succeeded; echo
    k --context kind-pizza-1 get svc -A --field-selector=spec.type=LoadBalancer;
  '
}
