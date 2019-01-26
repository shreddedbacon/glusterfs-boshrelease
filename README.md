# GlusterFS BOSH Release

# Create Volume
```
VOLUME_NAME=gv0
VOLUME_PATH=/var/vcap/store/glustervol
## On all servers
mkdir -p ${VOLUME_PATH}

## On one server
volume create ${VOLUME_NAME} replica 3 \
10.244.0.3:${VOLUME_PATH} \
10.244.0.4:${VOLUME_PATH} \
10.244.0.5:${VOLUME_PATH}
```
# Mount Volume
```
VOLUME_NAME=gv0
VOLUME_MOUNT=/path/to/mnt
SERVER=10.244.0.3 #ip or hostname
mount -t glusterfs ${SERVER}:/${VOLUME_NAME} ${VOLUME_MOUNT}
```


# Compilation Notes
Compiles GlusterFS as below on Ubuntu Xenial Stemcells 97.x
```
GlusterFS configure summary
===========================
FUSE client          : yes
Infiniband verbs     : yes
epoll IO multiplex   : yes
fusermount           : yes
readline             : yes
georeplication       : yes
Linux-AIO            : yes
Enable Debug         : no
Enable ASAN          : no
Block Device xlator  : no
glupy                : no
Use syslog           : yes
XML output           : yes
Encryption xlator    : yes
Unit Tests           : no
Track priv ports     : yes
POSIX ACLs           : yes
Data Classification  : yes
SELinux features     : yes
firewalld-config     : no
Events               : yes
EC dynamic support   : x64 sse avx
Use memory pools     : yes
Nanosecond m/atimes  : yes
Server components    : yes
Legacy gNFS server   : no
IPV6 default         : no
Use TIRPC            : missing
With Python          : 3.5
Cloudsync            : yes
```

# Reference Doco
https://docs.gluster.org/en/latest/Quick-Start-Guide/Quickstart/
https://docs.gluster.org/en/latest/Administrator%20Guide/Setting%20Up%20Clients/#mounting-volumes


