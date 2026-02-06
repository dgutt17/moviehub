APP_NAME=moviehub
IMAGE_NAME=$(APP_NAME)
TAG=latest

#.PHONY: build

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

