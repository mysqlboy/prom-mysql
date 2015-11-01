FROM debian:jessie
MAINTAINER andrew.moore@percona.com

RUN apt-get update -qq
RUN apt-get install golang git -yq
WORKDIR /
RUN git clone https://github.com/prometheus/mysqld_exporter.git
WORKDIR mysqld_exporter
RUN make
