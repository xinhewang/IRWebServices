FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y \
	python2.7 \
	python-pip

# PIP Upgrade
RUN pip install --upgrade pip

ADD src /usr/local/etc/src
RUN pip install -r /usr/local/etc/src/requirements.txt

ADD docker-entry /usr/bin/docker-entry
CMD ["sudo python2.7","/usr/local/etc/src/MainHandler.py"]