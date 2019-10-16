FROM quay.io/fluentd_elasticsearch/fluentd:v2.7.0

MAINTAINER Kublr Team <contact@kublr.com>

RUN gem install --no-document fluent-plugin-cloudwatch-logs -v 0.7.3 && \
    gem install --no-document fluent-plugin-amqp -v 0.13.0 && \
    ln -s /bin/true /bin/ip && \
    ln -s /bin/true /bin/ifconfig
