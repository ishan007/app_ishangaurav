# node-app

* **[Dockerfile:](https://github.com/ishan007/app_ishangaurav)**
* **[Dockerfile:](https://github.com/ishan007/app_ishangaurav/blob/master/Dockerfile)**
* **[Jenkinsfile:](https://github.com/ishan007/app_ishangaurav/blob/master/Jenkinsfile)**
* **[Kubernetes yaml files:](https://github.com/ishan007/app_ishangaurav/tree/master/kubernetes)**

# Commands

## Install dependencies:
     $ npm install

### Run the app:
     $ npm start
     $ Go to http://localhost:7100

## Build docker image
     $ docker build -t i-ishangaurav-master:latest . 
     
## Tag docker image 
     $ docker tag i-ishangaurav-master:latest ishangaurav/i-ishangaurav-master:latest

## Push docker image 
     $ docker push ishangaurav/i-ishangaurav-master:latest

## Run docker image 
     $ docker run -d -p 7100:7100 ishangaurav/i-ishangaurav-master:latest

## Create configuration variables on k8s
     $ kubectl apply -f kubernetes/configmap.yaml

## Create secret variables on k8s
     $ kubectl apply -f kubernetes/secrets.yaml

## Deploy app on k8s
     $ kubectl apply -f kubernetes/deploymnet.yaml

## Create service on k8s
     $ kubectl apply -f kubernetes/service.yaml