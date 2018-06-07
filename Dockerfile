FROM gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
RUN mkdir -p /plugins
COPY grafana.ini /etc/grafana/
COPY dashboards/ /dashboards
RUN wget https://grafana.com/api/plugins/grafana-kubernetes-app/versions/1.0.1/download
RUN unzip download -d /plugins


