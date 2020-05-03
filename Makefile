#
# Makefile
#

imageUrlPipe="test-pipe:1.0"
imageUrlExec="test-exec:1.0"

all: image-exec image-pipe

compile:
	gcc -o main main.c

image-exec: compile
	docker build -t $(imageUrlExec) -f Dockerfile_exec .

image-pipe: compile
	docker build -t $(imageUrlPipe) -f Dockerfile_pipe .


.PHONY: clean
clean:
	rm -f main && docker rmi $(imageUrlExec) && docker rmi $(imageUrlPipe)

