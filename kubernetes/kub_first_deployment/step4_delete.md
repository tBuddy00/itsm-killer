# Deletion of a Deployment

We're almost there. So far, we have seen how to check for our *cluster access*, create a *new deployment*, *scale-*, and how to *retrieve information* about our deployment.

As a last step, we want to see how we can remove our deployment from the cluster. 

First, let's check if our deployment is still there:

`kubectl get deployments`{{exec}}

| NAME                  | READY | UP-TO-DATE  | AVAILABLE |   AGE  | 
| --------------------- |:-----:| -----------:| ---------:| ------:|
| itsm-demo-deployment  |  3/3  | 3           | 3         |  29m   |

`kubectl get pods`{{exec}}

| NAME                                    | READY | STATUS  | RESTARTS |  AGE | 
| --------------------------------------- |:-----:| -------:| :--------| :---:| 
| itsm-demo-deployment-xxxxxxxxxx-**xxxxy**   |  1/1  | Running | 0        |  13s | 
| itsm-demo-deployment-xxxxxxxxxx-**xxxxx**   |  1/1  | Running | 0        |  26m | 
| itsm-demo-deployment-xxxxxxxxxx-**xxxxz**   |  1/1  | Running | 0        |  13s | 


In order to remove our deployment, we can simply call `kubectl delete deployment <name>`.
In our case this would be:

`kubectl delete deployment itsm-demo-deployment`{{exec}}

Let's verify the result.

`kubectl get deployments`{{exec}}

| NAME                  | READY | UP-TO-DATE  | AVAILABLE |   AGE  | 
| --------------------- |:-----:| -----------:| ---------:| ------:|

`kubectl get pods`{{exec}}

| NAME                                    | READY | STATUS  | RESTARTS |  AGE | 
| --------------------------------------- |:-----:| -------:| :--------| :---:| 

Executing both, `kubectl get deployments` and `kubectl get pods` should return empty tables.
In case you find `kubectl get pods` still returning some pods, just wait a bit and enter the command again.
