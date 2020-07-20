FROM python:3.8

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN apt-get update && apt-get install -y \
    tmux \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /workdir
