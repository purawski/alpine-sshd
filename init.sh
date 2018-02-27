#!/bin/sh
adduser -D uraf
echo uraf:qpqp01|chpasswd
authorized_keys /home/uraf/.ssh/
chown -R uraf.uraf /home/uraf/.ssh/
chmod 644 /home/uraf/.ssh/authorized_keys

# generate host keys if not present
ssh-keygen -A
# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -D -e "$@"

#   sleep infinity

