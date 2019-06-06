FROM k8s.gcr.io/fluentd-elasticsearch:v2.3.1

MAINTAINER Kublr Team <contact@kublr.com>

RUN gem install --no-document fluent-plugin-cloudwatch-logs -v 0.6.1 && \
    gem install --no-document fluent-plugin-amqp2 -v 0.2.0 && \
    ln -s /bin/true /bin/ip && \
    ln -s /bin/true /bin/ifconfig
