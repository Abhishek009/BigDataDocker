FROM jupyter/pyspark-notebook:latest

# Install wget and Java (if not already present)
USER root
RUN apt-get update && apt-get install -y wget openjdk-8-jdk

# Download and extract Hadoop
ENV HADOOP_VERSION=3.2.1
RUN wget https://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
    && tar -xzvf hadoop-${HADOOP_VERSION}.tar.gz -C /opt/ \
    && mv /opt/hadoop-${HADOOP_VERSION} /opt/hadoop \
    && rm hadoop-${HADOOP_VERSION}.tar.gz

# Set environment variables
ENV HADOOP_HOME=/opt/hadoop
ENV PATH=$PATH:/opt/hadoop/bin:/opt/hadoop/sbin

# Optionally, set JAVA_HOME if needed by Hadoop
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

USER $NB_UID