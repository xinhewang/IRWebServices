FROM ubuntu:latest
EXPOSE 8888

RUN apt-get update
RUN apt-get install -y \
	python2.7 \
	python-pip

# PIP Upgrade
RUN pip install --upgrade pip

ADD src /var/src
WORKDIR /var/src

RUN pip install -r /var/src/requirements.txt
RUN python -m nltk.downloader -d /usr/local/share/nltk_data all

CMD ["python2.7","/var/src/MainHandler.py"]