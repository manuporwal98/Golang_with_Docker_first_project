#docker file imports image ,someone already installed , ubuntu and  golang on top of it, we will just use this
#RUN create the app folder insise the image
# ADD . /app -- copies everyting from main.go int /app
#set the workingdir
#build a executabel file out of main.go named main, similar to running go build 
#run the executable file
#go to powershell and  ---  docker build -t GOLANG_WITH_DOCKER_FIRST_PROJECT .
FROM golang:1.12.0-alpine.3 
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]