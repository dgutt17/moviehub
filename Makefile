APP_NAME=moviehub
IMAGE_NAME=$(APP_NAME)_image
TAG=latest

#.PHONY: build

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

