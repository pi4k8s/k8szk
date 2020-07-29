VERSION=v3.4.14
PROJECT_ID=pi4k8s
PROJECT=${PROJECT_ID}

all: build

build:
	docker build --pull -t ${PROJECT}/k8szk:${VERSION} .

push: build
	gcloud docker -- push ${PROJECT}/k8szk:${VERSION}

.PHONY: all build push
