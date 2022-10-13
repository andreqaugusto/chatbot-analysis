#!/bin/bash

cd $SPARK_HOME/sbin 

if [ "$SPARK_MODE" == "master" ];
then
    export SPARK_MASTER_HOST=`hostname`
    ./start-master.sh -h $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT

elif [ "$SPARK_MODE" == "worker" ];
then
    ./start-worker.sh --webui-port $SPARK_WORKER_WEBUI_PORT $SPARK_MASTER_URL
else
    echo "Undefined workload type $SPARK_MODE. Please specify one of those: master, worker"
fi