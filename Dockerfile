FROM debian

RUN apt update && apt upgrade -y
RUN apt install -y docker.io \ 
    vim \
    iptables \
    sudo

RUN mkdir /root/.docker
COPY entrypoint.sh /
COPY config/docker /etc/default/docker

USER root

EXPOSE 2376
CMD ["/entrypoint.sh"]