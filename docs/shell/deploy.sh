#!/bin/bash

WORK_PATH="/tmp"
APP_NAME="spring-boot-demo.jar"

cp -f /user/tmp/spring-boot-demo-0.0.1-SNAPSHOT.jar $WORK_PATH/$APP_NAME

chmod 744 $WORK_PATH/$APP_NAME

cd $WORK_PATH
echo `pwd`

echo "Stopping SpringBoot Application"
pid=`ps -ef | grep ${APP_NAME} | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   echo "stop $pid"
   kill -9 $pid
fi

echo "start....."
nohup java -jar $WORK_PATH/$APP_NAME &
