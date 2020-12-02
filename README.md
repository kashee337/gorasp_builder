# GoRaspBuilder
go build tool with cgo package for Raspberry Py 

## how to
* build docker container  
`docker build . -t gorasp:build`  
* cross-compile go with cgo package  
`docker run -it -v "$(pwd)"/build:/go/build gorasp:build`