# spark/Dockerfile
FROM bde2020/spark-master:3.0.0-hadoop3.2

# Install necessary libraries for PySpark and Hive
RUN apt-get update && apt-get install -y python3-pip && \
    pip3 install pyspark pandas

# Copy Hive and PostgreSQL drivers
COPY ./hive-config/hive-site.xml /spark/conf/
ENV HADOOP_CONF_DIR=/etc/hadoop/conf
ENV SPARK_CONF_DIR=/spark/conf
ENV SPARK_HOME=/spark

WORKDIR /opt/spark
CMD ["/bin/bash"]