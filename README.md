# k8s-events-reporting
This repository offers a ready-to-go stack Kubernetes event monitoring stack on top of [elastic](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-elasticsearch.html) + [kibana](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-kibana.html) + [k8s-event-exporter](https://github.com/opsgenie/kubernetes-event-exporter).

To install the stack simply run `install.sh` script.

If you want to manually expose the Kibana url, you can launch from one of the node : 
```
kubectl port-forward --address 0.0.0.0 -n demo service/default-kb-http 5601:5601
```

Then access kibana on the adequate URL.


For more details on the usage and organization, you can check that post : https://storage-monkey.io/kubernetes-event-monitoring.html
