FROM alpine:3.7
MAINTAINER Pawel Urawski <Pawel.Urawski@gmail.com>

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add bash-completion openssh shadow
    


EXPOSE 22 
COPY scripts /scripts
ENTRYPOINT ["/scripts/init.sh"]
