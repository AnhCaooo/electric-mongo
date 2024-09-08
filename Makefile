# Created by Anh Cao on 09.09.2024.

APPLICATION_NAME ?= electric-mongo
TAG_VERSION ?= latest

docker: 
	go test ./... && docker build --tag ${APPLICATION_NAME}/${TAG_VERSION} .
