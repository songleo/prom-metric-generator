
Generate the Prometheus metric via a configuration.

## Run in local

Run the metric generator:

```
$ export METRIC_CONFIG=./manifests/metric-conf.yaml
$ go run main.go
```

Check the metric:

```
$ curl localhost:8080/metrics
```
