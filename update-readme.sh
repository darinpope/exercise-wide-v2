#!/bin/bash
cd /Users/dpope/github/exercise-wide-v2
START=1
END=$((1 + $RANDOM % 90))
echo "number of iterations $END"
for i in $(eval echo "{$START..$END}")
do
  git checkout main
  branchid=$((1 + $RANDOM % 100))
  n=$(printf %03d $branchid)
  git checkout branch-$n
  echo $i >> README.md
  git add README.md
  git commit -m "test"
  git push
  git checkout main
  sleep 1
done