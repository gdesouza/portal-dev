FROM ubuntu:xenial
RUN apt update
RUN apt install -y git nodejs npm sudo openssh-client make autoconf build-essential
RUN apt install -y pkg-config libpng-dev
RUN npm install grunt -g


#ADD ./build-portal.sh /tmp/
#CMD [ "/tmp/build-portal.sh" ]
