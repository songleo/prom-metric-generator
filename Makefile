IMAGE ?= quay.io/ocm-observability/prom-metric-generator:v1.0

build:
	go build -o main main.go

build-image:
	docker build -t ${IMAGE} -f Dockerfile .
