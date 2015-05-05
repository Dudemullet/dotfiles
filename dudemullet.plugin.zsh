# grep recursive in this dir
function grepr() {
  grep -r "$1" ./*;
}
# mkdir & cd to it
function mcd() {
  mkdir -p "$1" && cd "$1";
}
