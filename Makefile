help:
	@grep '^#' $(MAKEFILE_LIST)
# Usage: make OPTION
#
# help: show this help
# all: clean build run
all: clean build run
# clean: remove container and image
clean:
	sudo bash -c 'docker rm -f redk8s' ||:
# build: build the container
build:
	bash ./get_bins.sh
	sudo docker build --rm -t redk8s ./
# run: start a new container
run:
	sudo bash -c 'docker rm -f redk8s' ||:
	sudo docker run -d --name redk8s redk8s
# lab: start a new container for the github.com/edenberger/kube_security_lab lab
lab:
	sudo bash -c 'docker rm -f redk8s' ||:
	sudo docker run -d --net kind --name redk8s redk8s
# exec: run exec into the container
exec:
	sudo docker exec -it redk8s bash
