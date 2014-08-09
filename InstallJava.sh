#!/bin/bash

mkdir -p /usr/local/java
cd /usr/local/java
#复制压缩包
sudo -s cp -r /home/vincent/Downloads/jdk-8u11-linux-x64.tar.gz ./
sudo -s cp -r /home/vincent/Downloads/jre-8u11-linux-x64.tar.gz ./
#修改权限
sudo -s chmod a+x jdk-8u11-linux-x64.tar.gz
sudo -s chmod a+x jre-8u11-linux-x64.tar.gz
#解压
sudo -s tar zxvf jdk-8u11-linux-x64.tar.gz
sudo -s tar zxvf jre-8u11-linux-x64.tar.gz
#修改配置文件
sudo vim /etc/profile

#添加以下内容
# java环境变量
JAVA_HOME=/usr/local/java/jdk1.8.0_11
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
JRE_HOME=/usr/local/java/jre1.8.0_11
PATH=$PATH:$HOME/bin:$JRE_HOME/bin
export JAVA_HOME
export JRE_HOME
export PATH
