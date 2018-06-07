FROM gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
COPY grafana.ini /etc/grafana/
COPY grafana-dashboards/dashboards /var/lib/grafana/

