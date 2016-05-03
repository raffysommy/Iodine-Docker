
FROM ubuntu:14.04

MAINTAINER Raffaele Sommese <raffysommy@gmail.com>

RUN apt-get update

RUN apt-get install -y iodine iptables

ENV PASSWORD ch4ng3m3
ENV HOST test.r4ffy.info

EXPOSE 53/udp 

RUN mkdir -p /dev/net

RUN mkdir /tmp/setup

WORKDIR /tmp/setup

COPY setup.sh ./
RUN chmod +x setup.sh
CMD ["./setup.sh"]

