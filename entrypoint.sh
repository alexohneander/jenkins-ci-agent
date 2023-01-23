#!/bin/bash
sudo dockerd -H tcp://0.0.0.0:2376 &
/usr/sbin/sshd -D
while sleep 3600; do :; done