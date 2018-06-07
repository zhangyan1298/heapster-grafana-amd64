FROM gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
RUN mkdir -p /var/lib/grafana/dashboards
COPY grafana.ini /etc/grafana/
COPY dashboards/ /var/lib/grafana/dashboards

