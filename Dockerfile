FROM centos:7
ENV TZ=Europe/Athens
RUN yum update -y
RUN yum upgrade -y
RUN yum install -y python3 python3-pip procps iperf3 git
RUN pip3 install ansible paramiko