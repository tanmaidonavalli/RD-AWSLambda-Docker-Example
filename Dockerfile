FROM amazonlinux:2018.03

WORKDIR /project

# install python and apps for setup 
RUN yum -y install python36 \
    python36-pip \
    rsync \
    zip
RUN yum clean all
RUN python3 -m pip install --upgrade pip

# copy host directory into container
COPY . /project/
