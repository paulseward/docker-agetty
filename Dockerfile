FROM alpine:latest

RUN apk -U add agetty sl nethack; \
    adduser lpbk; \
    echo lpbk:demo | chpasswd

COPY issue /etc/issue
COPY motd /etc/motd
COPY inittab /etc/inittab

ENTRYPOINT /sbin/init
