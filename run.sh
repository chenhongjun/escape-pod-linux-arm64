#!/bin/bash
# 拷贝escape_pod依赖的第三方私有共享库
chmod +x ./lib/libstt.so
cp ./lib/libstt.so /usr/bin/
# 拷贝escape-pod配置
cp ./escape-pod.conf /etc/escape-pod.conf
cp ./escape_pod.service /lib/systemd/system/escape_pod.service
# 拷贝escape-pod主体
chmod +x ./escapepod/bin/escape-pod-linux-arm64
cp -fr ./escapepod /usr/local/
# 启动escape_pod服务
systemctl start escape_pod
systemctl status escape_pod