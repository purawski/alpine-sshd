FROM alpine:3.7
MAINTAINER Pawel Urawski <Pawel.Urawski@gmail.com>

# Install samba
#RUN apk --no-cache --no-progress upgrade && \
#    apk --no-cache --no-progress add bash samba shadow && \
RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add bash-completion openssh shadow
    


#VOLUME ["/etc/openvpn"]
EXPOSE 22 
COPY scripts /scripts
ENTRYPOINT ["/scripts/init.sh"]
