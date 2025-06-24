# K8s deploy

This build uses minikube and kubectl and docker. Please make sure you already have all of these installed.

The port 8090 can be changed to any unused port.

Steps:
1 - create deployment yaml
`kubectl apply -f docusaurus-dom-deployment.yaml`

2 - create service yaml
`kubectl apply -f docusaurus-dom-service.yaml`

3 - open minikube tunnel in another tab
`sudo minikube tunnel`

4 - redirrect port redirect
`kubectl port-forward --address 0.0.0.0 services/docusaurus-dom 8090:80`
