# heapster-grafana-amd64
vgcr.io/google_containers/heapster-grafana-amd64:v4.4.3

1.在原镜像基础上增加grafana json file 与使用Prometheus进行MySQL和MongoDB监控的Grafana仪表板
2.通过node-exporter插件 ，由prometheus 抓取json数据展示在grafana仪表板

详细说明见github地址
https://github.com/percona/grafana-dashboards.git

3.增加dashboards json 插件模板. 发现原基础镜像提供的存储类型为emptyDir ，在docker build COPY 文件到相同文件夹的时候不成功。
可能是在build 镜像后，kubernetes 在执行时候把此目录进行初始化。

4.增加kubernetes插件，配置插件目录为/plugin
说明地址https://grafana.com/plugins/grafana-kubernetes-app/installation
