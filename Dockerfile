FROM python:3.8

RUN apt-get update && apt-get install -y \
    git \
    tmux

WORKDIR /tmp
RUN git clone https://github.com/Nandaka/PixivUtil2.git
WORKDIR /tmp/PixivUtil2
RUN pip install -r requirements.txt

# clean
RUN apt-get clean \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /workdir