# ubuntu 18.04
FROM ubuntu:bionic-20200311

ARG PYTHON_VERSION=3.6.7-1~18.04

RUN apt update && apt install -y python3=${PYTHON_VERSION}

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

ENV HOME /home

ENTRYPOINT ["python3"]