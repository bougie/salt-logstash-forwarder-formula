{% from "logstash-forwarder/default.yml" import lookup, rawmap with context %}
{% set lookup = salt['grains.filter_by'](lookup, grain='os', merge=salt['pillar.get']('logstash-forwarder:lookup')) %}
{% set rawmap = salt['pillar.get']('logstash-forwarder', rawmap, merge=True) %}

logstash-forwarder_config:
    file.managed:
        - name: {{lookup.config_file}}
        - source: salt://logstash-forwarder/files/logstash-forwarder.json.j2
        - template: jinja
        - context:
            config: {{rawmap}}
