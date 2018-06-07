FROM gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
COPY grafana.ini /etc/grafana/
COPYdashboards /var/lib/grafana/

