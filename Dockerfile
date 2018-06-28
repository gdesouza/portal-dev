FROM ubuntu:latest
RUN apt update
RUN apt install -y git node npm sudo openssh-client make autoconf build-essential
RUN apt install -y pkg-config libpng-dev


#ADD ./build-portal.sh /tmp/
#CMD [ "/tmp/build-portal.sh" ]
