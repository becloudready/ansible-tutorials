FROM centos:7
LABEL maintainer="Chandan Kumar"

RUN yum install -y epel-release
RUN yum install -y java-1.8.0-openjdk wget
RUN wget -qO- http://httpd-mirror.sergal.org/apache/kafka/1.0.1/kafka_2.11-1.0.1.tgz | tar xvz kafka_2.11-1.0.1/{libs,bin} --transform 's/kafka_2.11-1.0.1/kafka/'

CMD /kafka/bin/kafka-server-start.sh /kafka/config/server.properties && tail -f /kafka/logs/server.log
