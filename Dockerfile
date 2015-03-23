FROM postgres:latest
MAINTAINER doloopwhile@gmail.com

RUN apt-get update -y && apt-get install wget libpq-dev -y && pip install pgcli && \
    apt-get install wgetwget --no-check-certificate https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && rm get-pip.py && \
    apt-get remove -y wget && apt-get autoremove -y && apt-get clean && \
    :
