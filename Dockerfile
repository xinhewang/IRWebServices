FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y \
	python2.7 \
	python-pip

# PIP Upgrade
RUN pip install --upgrade pip

ADD src /var/local/src
RUN pip install -r /var/local/src/requirements.txt

CMD ["python2.7","/var/local/src/MainHandler.py"]