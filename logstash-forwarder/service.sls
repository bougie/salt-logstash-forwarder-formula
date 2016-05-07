{% from "logstash-forwarder/default.yml" import lookup, rawmap with context %}
{% set lookup = salt['grains.filter_by'](lookup, grain='os', merge=salt['pillar.get']('logstash-forwarder:lookup')) %}
{% set rawmap = salt['pillar.get']('logstash-forwarder', rawmap) %}

logstash-forwarder_service:
    service.running:
       - name: {{lookup.service}}
       - enable: True
