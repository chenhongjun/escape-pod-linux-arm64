# 简介：
digital-dream-labs OSKR和escape-pod只提供了树莓派的镜像，但是我没有树莓派硬件，
尝试使用qemu模拟了一台树莓派，启动后只支持usb网络设备，没连上网络，
于是从ubuntu-20.04.4-escape-pod-1.8.2.img镜像中提取出来了escape-pod服务，直接放到ARM64的ubuntu上运行

# 如何使用
1. 通过qemu创建一台ARM64架构CPU的硬件，并安装ubuntu 20.4
2. 在ubuntu虚拟机中运行下载本项目并运行：
```shell
git clone https://github.com/chenhongjun/escape-pod-linux-arm64.git
cd escape-pod-linux-arm64
chmod +x ./run.sh
./run.sh
```
3. 刚刚git clone下载的目录是用不了的，因为github限制了文件上传大小为100MB，所以可以找我要这4个大于100MB的文件的并替换：
```
escapepod/model.scorer
escapepod/ota/OSKR-DDLServer-1.8.1.6051.ota
escapepod/ota/PROD-DDLServer-1.8.1.6051.ota
escapepod/ota/PROD-EscapePod-1.8.1.6051.ota
```

要文件加QQ用QQ传输，QQ号:1769003060
