FROM ubuntu:latest

ENV TZ=Asia/Singapore
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y
RUN apt install -y squid stunnel apache2-utils

ENTRYPOINT service squid start && service stunnel4 start && while true; do sleep 1; done
