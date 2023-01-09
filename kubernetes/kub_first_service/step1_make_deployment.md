# Creating a new Deployment

At first, we will create a new deployment of our `nginx` application. 

Executing 

`kubectl create deployment itsm-srv-deploy --image=nginx:alpine --replicas=3 --port=80`{{exec}} 

should reply with: *deployment.apps/itsm-demo-deployment created*

Different to the previous scenario, we added some additional flags:

1. `--replicas=3`: declares straight up the amount of replicas (**pods**), we want to have for this deployment. 
1. `--port=80`: Specifies the **port** that the images is exposing


We can verify our successful deployment with 

`kubectl get deployments`{{exec}}

and 

`kubectl get pods -o wide`{{exec}}

In order to access the nginx default web page, we have to get the pods' IP address and then call them directly. Since pods are very *fast moving*, this would be not the best way. 
This is where a **Service** comes into play.
