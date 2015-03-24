FROM postgres:latest
MAINTAINER doloopwhile@gmail.com

RUN apt-get update -y && \
    apt-get install python python-dev python-pip libpq-dev -y && \
    pip install pgcli && \
    apt-get remove -y python-dev python-pip && \
    apt-get autoremove -y && \
    apt-get clean && \
    :
