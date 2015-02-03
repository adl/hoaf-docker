.PHONY: build-image push-image
build-image: Dockerfile
	sudo docker build -t gadl/hoa-tools .
push-image:
	sudo docker push gadl/hoa-tools
