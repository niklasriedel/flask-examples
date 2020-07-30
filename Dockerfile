FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y --no-install-recommends \
	tini wget htop python3-pip

ADD requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

RUN useradd -m -u 1000 webserver
USER webserver
WORKDIR /home/webserver

# Start container with tini so it just sits there waiting to be used
ENTRYPOINT ["/bin/tini", "--"]
CMD ["/bin/bash", "-c", "while true ; do echo beep ; sleep 1 ; done"]

