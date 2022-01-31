#!/bin/bash
NS=${NS:-default}

kubectl get customresourcedefinitions | grep k8s.elastic.co --quiet
if [ $? -ne 0 ];
  then echo "installing elastic CRD"; kubectl apply -f https://download.elastic.co/downloads/eck/1.1.1/all-in-one.yaml
fi

#helm template demo --namespace $NS k8s-events-reporting/
helm install --name-template benchmark --namespace $NS ./k8s-events-reporting
