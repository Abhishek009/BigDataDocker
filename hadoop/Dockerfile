# hadoop/Dockerfile
FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

WORKDIR /usr/local/hadoop

COPY ./hadoop-config/core-site.xml /usr/local/hadoop/etc/hadoop/
COPY ./hadoop-config/hdfs-site.xml /usr/local/hadoop/etc/hadoop/
COPY ./hadoop-config/yarn-site.xml /usr/local/hadoop/etc/hadoop/
COPY ./hadoop-config/mapred-site.xml /usr/local/hadoop/etc/hadoop/
COPY ./hadoop-config/slaves /usr/local/hadoop/etc/hadoop/

EXPOSE 9000 9870 8088 50070

CMD ["/bin/bash"]