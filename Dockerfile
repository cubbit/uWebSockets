FROM ubuntu:latest

# RUN add-apt-repository ppa:acooks/libwebsockets6
RUN apt-get update
RUN apt-get install -y build-essential git make cmake ninja-build libuv1.dev libssl-dev zlib1g-dev

VOLUME [ "/usr/src/uws" ]
WORKDIR /usr/src/uws

RUN mkdir -p build

WORKDIR /usr/src/uws/build

CMD ["/bin/bash"]
