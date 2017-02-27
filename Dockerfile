FROM ubuntu:latest
RUN apt-get update && apt-get install -y wget && \
	wget https://github.com/jwilder/dockerize/releases/download/v0.3.0/dockerize-linux-amd64-v0.3.0.tar.gz && \
	tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.3.0.tar.gz
ENTRYPOINT [ "dockerize" ]
