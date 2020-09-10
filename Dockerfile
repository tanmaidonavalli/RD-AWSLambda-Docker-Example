FROM ubuntu:18.04
RUN apt update && \
    apt install wget zip curl git -y
RUN wget https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip && \
    unzip terraform*.zip && \
    mv terraform /usr/local/bin
RUN mkdir /root/AMIcode
WORKDIR /root/AMIcode
COPY tfrun.sh /root/AMIcode
RUN chmod 755 tfrun.sh && \
    ./tfrun.sh
CMD ["/bin/bash", "-D"]


#FROM amazonlinux:2018.03

#WORKDIR /project

# install python and apps for setup 
#RUN yum -y install python36 \
    #python36-pip \
    #rsync \
    #zip
3RUN yum clean all
#RUN python3 -m pip install --upgrade pip

# copy host directory into container
#COPY . /project/

