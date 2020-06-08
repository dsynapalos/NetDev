FROM ubuntu:18.04
ENV TZ=Europe/Athens \
    DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y python3 python3-pip openconnect iputils-ping procps iperf3 python-gitlab git tzdata
RUN dpkg-reconfigure -f noninteractive tzdata
RUN pip3 install ansible paramiko