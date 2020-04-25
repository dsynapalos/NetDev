FROM ubuntu:18.04
COPY . .
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y python3 python3-pip openconnect iputils-ping procps
RUN pip3 install ansible paramiko
