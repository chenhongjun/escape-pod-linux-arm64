#!/bin/bash
cp ./escape-pod.conf /etc/escape-pod.conf
cp ./escape_pod.service /lib/systemd/system/escape_pod.service
chmod +x ./escapepod/bin/escape-pod-linux-arm64
cp -fr ./escapepod /usr/local/
systemctl start escape_pod
systemctl status escape_pod