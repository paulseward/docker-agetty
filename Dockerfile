FROM alpine:latest
RUN apk -U add agetty
COPY issue /etc/issue
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
