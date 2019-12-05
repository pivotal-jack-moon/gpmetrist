# ps -ef | grep run_ | grep -v grep | awk '{print $2}' | xargs kill 
kill -9 `ps -ef | grep run_ | grep -v grep | awk '{print $2}'`
