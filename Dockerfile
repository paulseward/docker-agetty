FROM alpine:latest

RUN apk -U add agetty sl nethack ppp-daemon; \
    adduser lpbk; \
    echo lpbk:demo | chpasswd

COPY agetty/issue /etc/issue
COPY agetty/motd /etc/motd
COPY agetty/inittab /etc/inittab

ENTRYPOINT /sbin/init
