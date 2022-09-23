#!/bin/bash

if [ "$SPARK_MODE" == "master" ];
then
    export SPARK_MASTER_HOST=`hostname`
    cd ${SPARK_HOME}/sbin && ./start-master.sh -h $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT

elif [ "$SPARK_MODE" == "worker" ];
then
    cd ${SPARK_HOME}/sbin && ./start-worker.sh --webui-port $SPARK_WORKER_WEBUI_PORT $SPARK_MASTER_URL
else
    echo "Undefined Workload Type $SPARK_MODE, must specify: master, worker"
fi