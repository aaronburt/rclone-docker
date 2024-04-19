FROM alpine:latest

RUN apk update && \
    apk upgrade

RUN apk add --no-cache curl unzip

RUN apk add --no-cache bash

RUN set -ex && apk --no-cache add sudo

RUN sudo curl https://rclone.org/install.sh | bash

RUN sudo chown -R $USER ~/.config/rclone

ENTRYPOINT [ "/usr/bin/rclone" ]
