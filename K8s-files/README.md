# K8s deploy

This build uses minikube and kubectl and docker. Please make sure you already have all of these installed.

The port 8090 can be changed to any unused port. Please make sure that the port is not blocked by firewall.

## Steps:

1 - create deployment yaml

`kubectl apply -f docusaurus-dom-deployment.yaml`

2 - create service yaml

`kubectl apply -f docusaurus-dom-service.yaml`

3 (optional) - open minikube tunnel in another tab

`sudo minikube tunnel`

4 - redirrect port redirect

`kubectl port-forward --address 0.0.0.0 services/docusaurus-dom 8090:80`

or you can start it with nohup so it runs in the background:

`nohup kubectl port-forward --address 0.0.0.0 services/docusaurus-dom 8090:80 > port-forward.log 2>&1 &`

5 - now you should be able to access the app on.your.ip.adress:8090
