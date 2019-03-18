FROM alpine:3.8

RUN apk add --no-cache curl

COPY ./wait-for-kibana.sh /

COPY ./export.json /

ENTRYPOINT ["/wait-for-kibana.sh"]