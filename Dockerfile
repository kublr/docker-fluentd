FROM gcr.io/fluentd-elasticsearch/fluentd:v2.6.0

MAINTAINER Kublr Team <contact@kublr.com>

RUN gem install --no-document fluent-plugin-cloudwatch-logs -v 0.7.3 && \
    gem install --no-document fluent-plugin-amqp2 -v 0.2.0 && \
    ln -s /bin/true /bin/ip && \
    ln -s /bin/true /bin/ifconfig
