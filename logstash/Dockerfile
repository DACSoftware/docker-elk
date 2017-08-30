# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:5.5.2

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json

COPY second-docker-entrypoint.sh /usr/local/bin/

ADD https://raw.githubusercontent.com/DACSoftware/rancher-secrets/master/rancher-secrets.sh /usr/local/bin/rancher-secrets.sh

USER root
RUN chmod a+rx /usr/local/bin/rancher-secrets.sh

USER logstash

COPY pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY config/logstash.yml /usr/share/logstash/config/logstash.yml

ENTRYPOINT ["second-docker-entrypoint.sh"]
