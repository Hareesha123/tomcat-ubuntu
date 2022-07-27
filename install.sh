#!/bin/bash

sudo apt-get update -y
sudo apt install openjdk-11-jdk
sudo apt-get install git -y
cd /opt
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.23/bin/apache-tomcat-10.0.23.tar.gz
sudo tar -zxvf apache-tomcat-10.*
sudo rm -rf apache*.gz
sudo git clone https://github.com/adhig93/tomcat-config
sudo cp ./tomcat-config/context.xml /opt/apache-tomcat-10.*/webapps/manager/META-INF/context.xml
sudo cp ./tomcat-config/context.xml /opt/apache-tomcat-10.*/webapps/host-manager/META-INF/context.xml
sudo cp ./tomcat-config/tomcat-users.xml /opt/apache-tomcat-10.*/conf/tomcat-users.xml
sudo rm -rf tomcat-config
cd /opt/apache-tomcat-10.*
sudo sh bin/startup.sh
