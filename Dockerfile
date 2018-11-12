FROM alpine:3.7

# Update packages of a running system
RUN apk update

# install terraform
RUN apk add terraform

# copy files being used
COPY commands.sh ./commands.sh

ENTRYPOINT ["/bin/sh", "commands.sh"]
