function kill-node {
  NODE_PROCS=`ps -ax | grep node`
  if [ $# -ne 0 ]; then
    echo "Killing $1 whole family"
    NODE_PROCS=`echo $NODE_PROCS | grep $1`
  fi
  echo "Killing every node processes. Not a single child will survive"
  kill -15 `echo $NODE_PROCS | awk '{print $1}'` 2> /dev/null
}
