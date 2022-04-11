FROM registry.ci.openshift.org/stolostron/builder:go1.17-linux AS builder

WORKDIR /workspace

COPY go.sum go.mod ./

COPY main.go ./

RUN CGO_ENABLED=0 go build -a -installsuffix cgo -v -i -o prom-metric-generator main.go

FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

WORKDIR /

COPY --from=builder /workspace/prom-metric-generator prom-metric-generator

ENTRYPOINT ["/prom-metric-generator"]
