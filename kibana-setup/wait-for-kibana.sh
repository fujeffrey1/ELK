#!/bin/sh

set -e

# Wait for Elasticsearch to start up before doing anything.
until $(curl -s -f http://elasticsearch:9200/_cat/health -o /dev/null); do
    echo "Waiting for Elasticsearch..."
    sleep 10
done


# Wait for Kibana to start up before doing anything.
until $(curl -s -I -f http://kibana:5601/status -o /dev/null); do
    echo "Waiting for Kibana..."
    sleep 10
done


# Load dashboard
curl -H "Content-Type: application/json" -H "kbn-xsrf: true" -XPOST kibana:5601/api/kibana/dashboards/import -d @/export.json