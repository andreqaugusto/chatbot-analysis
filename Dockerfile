FROM openjdk:11-jre-slim as builder

RUN apt-get update && apt-get install -y curl vim wget software-properties-common ssh net-tools ca-certificates 

ENV SPARK_VERSION=3.2.2
ENV HADOOP_VERSION=3.2
ENV JUPYTERLAB_VERSION=3.2.0

# Set env vars for Spark
FROM builder as apache-spark

ENV SPARK_HOME=/opt/spark 
ENV SPARK_NO_DAEMONIZE=true
ENV PYTHONHASHSEED=1

RUN wget -O apache-spark.tgz "https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz" && \
    mkdir -p ${SPARK_HOME} && \
    tar -xf apache-spark.tgz -C ${SPARK_HOME} --strip-components=1 && \
    rm apache-spark.tgz

WORKDIR ${SPARK_HOME}

EXPOSE 8080 7077 7000

COPY ./scripts/start-spark.sh /

CMD ["/bin/bash", "/start-spark.sh"]

FROM builder as notebook

RUN apt-get update && apt-get install -y python3 python3-pip && \
    pip3 install pyspark==${SPARK_VERSION} jupyterlab==${JUPYTERLAB_VERSION}

EXPOSE 8889

WORKDIR /app

CMD jupyter lab --ip=0.0.0.0 --port=8889 --no-browser --allow-root --ServerApp.token='' --ServerApp.password=''