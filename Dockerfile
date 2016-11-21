FROM ubuntu:latest

ENTRYPOINT ["/usr/bin/docker-entry"]

RUN apt-get update
RUN apt-get install -y \
	python2.7 \
	python-pip

# PIP Upgrade
RUN pip install --upgrade pip

ADD /src /usr/local/etc/src

RUN pip install -r /usr/local/etc/src/requirements.txt

ADD docker-entry /usr/bin/docker-entry
RUN chmod +x /usr/bin/docker-entry