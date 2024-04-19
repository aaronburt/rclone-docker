# RCLONE in docker

Run RCLONE without needing to install the binary on the system

### Usage

```powershell
docker run -v "rclone.conf:/root/.config/rclone/rclone.conf" -v "C:\Users\USERNAME\Desktop\RCLONE\temp:/temp" mrburtuk/rclone copy /temp GBackup:temp 
```

### The Dockerfile

```Dockerfile
# Downloads the latest alpine version
FROM alpine:latest

# APK updates and upgrades the repos
RUN apk update && \
    apk upgrade

# Installs unzip
RUN apk add --no-cache curl unzip

# Installs bash
RUN apk add --no-cache bash

# Installs RCLONE
RUN curl https://rclone.org/install.sh | bash

# Sets the entry point to rclone for args
ENTRYPOINT [ "/usr/bin/rclone" ]
```