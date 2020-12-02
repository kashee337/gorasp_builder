#!/bin/bash
# read param
echo -n git_repo_url?: 
read REPO_URL
echo -n CGO_ENABLED?[1 or 0]:
read CGO_ENABLED
REPO_NAME=`basename -s .git \$REPO_URL`

# build
cd src
git clone $REPO_URL
cd $REPO_NAME
CC=arm-linux-gnueabihf-gcc GOOS=linux GOARCH=arm GOARM=6 CGO_ENABLED=$CGO_ENABLED go build .
mv $REPO_NAME /go/build/