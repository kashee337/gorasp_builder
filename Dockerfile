FROM golang:1.15
RUN apt-get update &&\
    apt-get install -y --no-install-recommends \
    g++-arm-linux-gnueabihf \
    git &&\
    apt-get clean

COPY build.sh /go/src
RUN chmod +x /go/src/build.sh

CMD ["/go/src/build.sh"]