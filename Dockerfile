FROM alpine:latest

RUN apk update && \
    apk upgrade

RUN apk add --no-cache curl unzip

RUN apk add --no-cache bash

RUN curl https://rclone.org/install.sh | bash

ENTRYPOINT [ "/usr/bin/rclone" ]
