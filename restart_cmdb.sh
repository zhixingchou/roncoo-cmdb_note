#!/bin/bash

count=`ps -ef|grep python|grep run|wc -l`
if [ $count -gt 0 ]; then
	echo "cmdb is running"
	ps -ef|grep python|grep run|grep opt|awk -F ' ' '{print $2}'|xargs kill -9
	echo "cmdb is stoped,start again"
else
	source /opt/env/bin/activate
	/usr/bin/nohup python /opt/roncoo-cmdb/devops/runweb.py &
	/usr/bin/nohup python /opt/roncoo-cmdb/devops/runapi.py &
fi
