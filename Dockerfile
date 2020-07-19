FROM python:3.8

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install -y tmux

WORKDIR /workdir
