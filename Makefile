user = magiwanders
name = dmwe
version = 0.1

default: help

help:
	cat README.md

build:
	docker image build -t $(user)/$(name):$(version) .

rebuild:
	make clean
	make build
	make container
	make start
	
container: 
	open -a XQuartz
	xhost + 127.0.0.1
	docker container create -e DISPLAY=host.docker.internal:0 -v /tmp/.X11-unix:/tmp/.X11-unix -it --mount type=bind,source='$(shell pwd)'/user,target=/home/user --name $(name) $(user)/$(name):$(version) 
	docker container ls -a

start:
	docker container start -i $(name)

clean:
	docker container stop $(name)
	docker container rm $(name)
	docker container ls -a

uninstall:
	docker container rm $(name)
	docker image rm $(user)/$(name):$(version)