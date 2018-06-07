FROM gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
RUN mkdir -p /test
COPY grafana.ini /etc/grafana/
COPY dashboards/ /dashboards

