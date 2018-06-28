FROM node:alpine
RUN apk add --no-cache git sudo openssh-client

#ADD ./build-portal.sh /tmp/
#CMD [ "/tmp/build-portal.sh" ]
