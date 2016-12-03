FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y \
	python2.7 \
	python-pip

# PIP Upgrade
RUN pip install --upgrade pip


