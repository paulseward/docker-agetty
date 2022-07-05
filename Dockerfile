FROM alpine:latest
RUN apk -U add agetty; \
    adduser lpbk; \
    echo lpbk:demo | chpasswd
COPY issue /etc/issue
COPY inittab /etc/inittab
ENTRYPOINT /sbin/init
