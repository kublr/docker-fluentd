# Fluentd Docker Image
It's a docker image built on top of [quay.io/fluentd_elasticsearch/fluentd](https://quay.io/repository/fluentd_elasticsearch/fluentd?tab=tags) with some additional fluentd plugin's installed

## Supported tags and respective `Dockerfile` links
 - `3.3.0`, `latest` ([v3.3.0/Dockerfile](https://github.com/kublr/docker-fluentd/blob/3.3.0/Dockerfile))
 - `2.7.1` ([v2.7.1/Dockerfile](https://github.com/kublr/docker-fluentd/blob/2.7.1/Dockerfile))
 - `2.7.0` ([v2.7.0/Dockerfile](https://github.com/kublr/docker-fluentd/blob/2.7.0/Dockerfile))
 - `2.6.0` ([v2.6.0/Dockerfile](https://github.com/kublr/docker-fluentd/blob/2.6.0/Dockerfile))
 - `2.5.2` ([v2.5.2/Dockerfile](https://github.com/kublr/docker-fluentd/blob/2.5.2/Dockerfile))
 - `2.3.1`([v2.3.1/Dockerfile](https://github.com/kublr/docker-fluentd/blob/2.3.1/Dockerfile))

## Used components
The source code of used base image is here: [https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch/fluentd-es-image](https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch/fluentd-es-image).
At the moment, the base image is prepared manually from the mentioned repository by the kubernetes team. The fluentd version is specified in [Gemfile](https://github.com/kubernetes/kubernetes/blob/master/cluster/addons/fluentd-elasticsearch/fluentd-es-image/Gemfile), now it is v1.12.0
The fluentd last build is [v1.13.3](https://github.com/fluent/fluentd/tags)

The cloudwatch-logs plugin allows to send logs to Amazon CloudWatch. Plugin source code: https://github.com/fluent-plugins-nursery/fluent-plugin-cloudwatch-logs/tree/v0.14.0

The amqp plugin is used in Kublr to delivery logs from the cluster to the [Centralized Logging ELK](https://docs.kublr.com/reference/centralized-log-collection/). Plugin source code: https://github.com/giraffi/fluent-plugin-amqp/releases/tag/v0.14.0
## Usage
For more details refer to https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch/fluentd-es-image
