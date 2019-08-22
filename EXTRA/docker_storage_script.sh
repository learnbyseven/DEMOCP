#!/bin/bash
yum -y install docker-1.13.1
cat <<EOF > /etc/sysconfig/docker-storage-setup
DEVS=/dev/sdb
VG=docker-vg
EOF
docker-storage-setup
