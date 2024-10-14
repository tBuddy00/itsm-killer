# Delete a Deployment

**We're almost there!**

So far, we’ve covered how to verify our *cluster access*, create a *new deployment*, *scale it up*, and *retrieve information* about our deployment. Now, as a final step, let’s learn how to clean up by removing the deployment from our cluster.

First, let’s check if our deployment is still active:

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

To remove the deployment, simply run the following command:

`kubectl delete deployment itsm-demo-deployment`{{exec}}

Now, let's verify that it has been successfully deleted:

`kubectl get deployments`{{exec}}

| NAME                  | READY | UP-TO-DATE  | AVAILABLE |   AGE  | 
| --------------------- |:-----:| -----------:| ---------:| ------:|

`kubectl get pods`{{exec}}

| NAME                                    | READY | STATUS  | RESTARTS |  AGE | 
| --------------------------------------- |:-----:| -------:| :--------| :---:| 

Both `kubectl get deployments` and `kubectl get pods` should return **empty** tables. If you still see some pods, give it a moment and try again—those pods should disappear shortly.

Before clicking on Check, please make sure to run `kubectl get pods`{{exec}}.