FROM quay.io/fluentd_elasticsearch/fluentd:v3.3.0

MAINTAINER Kublr Team <contact@kublr.com>

RUN gem install --no-document fluent-plugin-cloudwatch-logs -v 0.14.0 && \
    gem install --no-document fluent-plugin-amqp -v 0.13.0 && \
    ln -s /bin/true /bin/ip && \
    ln -s /bin/true /bin/ifconfig
