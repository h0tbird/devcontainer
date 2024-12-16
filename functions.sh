
# MeshLab Watch
function mlw {
  watch '
    k --context kind-kube-00 get po,svc -A;
    echo "\n-------\n";
    k --context kind-pasta-1 get po,svc -A;
    echo "\n-------\n";
    k --context kind-pasta-2 get po,svc -A
  '
}
