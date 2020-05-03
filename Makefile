#
# Makefile
#

imageUrlPipe="test-pipe:1.0"
imageUrlExec="test-exec:1.0"

all: image-exec image-pipe

compile:
	go build -ldflags='-s -w' -o main main.go

image-pipe: compile
	docker build -t $(imageUrlPipe) -f Dockerfile_pipe .

image-exec: compile
	docker build -t $(imageUrlExec) -f Dockerfile_exec .


.PHONY: clean
clean:
	rm -f main; \
	docker rmi -f $(imageUrlExec) $(imageUrlPipe);

