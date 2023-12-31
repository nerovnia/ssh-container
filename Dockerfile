FROM alpine:latest

LABEL maintainer="Volodymyr Nerovnia nerv@i.ua"

RUN apk add --update --no-cache openssh 

RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN adduser -h /home/dragon -s /bin/sh -D dragon
RUN echo -n 'dragon:nimda' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
COPY entrypoint.sh /
