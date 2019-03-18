-   config folder configures multiple pipelines for logstash
-   kibana-setup folder is for importing existing dashboard into kibana
-   logs folder contains mock apache server logs
-   pipeline folder contains logstash pipelines
-   pipeline.conf is the initial logstash pipeline before separating into access.conf and errors.conf
-   test-data.json contains data for playing around with elasticsearch (curl -s -H "Content-Type: application/json" -XPOST localhost:9200/\_bulk --data-binary "@test-data.json")

To start: docker-compose up -d
To stop: docker-compose down --rmi local
