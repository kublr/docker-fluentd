FROM quay.io/fluentd_elasticsearch/fluentd:v3.3.0

MAINTAINER Kublr Team <contact@kublr.com>

RUN apt-get update && apt-get install net-tools -y && \
    gem install --no-document fluent-plugin-cloudwatch-logs -v 0.14.0 && \
    gem install --no-document fluent-plugin-rabbitmq -v 0.0.9 && \
    gem install --no-document fluent-plugin-remote_syslog -v 1.0.0 && \
    ln -s /bin/true /bin/ip && \
    ln -s /bin/true /bin/ifconfig
