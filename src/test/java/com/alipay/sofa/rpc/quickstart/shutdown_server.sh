#!/bin/bash
# 获取占用12200端口的进程ID
pid=$(lsof -t -i:12200)
# 如果pid存在，则杀死进程
if [[ -n $pid ]]; then
  echo "Closing process with PID: $pid"
  kill $pid
else
  echo "No process found on port 12200"
fi