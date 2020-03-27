# ubuntu 18.04
FROM ubuntu:bionic-20200311

ARG PYTHON_VERSION=3.6.7-1~18.04

RUN apt update && apt install -y python3=${PYTHON_VERSION}

ENV HOME=/home

ENTRYPOINT ["python3"]