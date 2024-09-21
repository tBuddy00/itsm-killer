# Creating a new Deployment

First, let’s create a new deployment for our `nginx` application!

By executing the command:

`kubectl create deployment itsm-srv-deploy --image=nginx:alpine --replicas=3 --port=80`{{exec}},

you should see a response like: 

```
deployment.apps/itsm-srv-deploy created.
```

In this scenario, we’ve included some additional flags:

`--replicas=3:` This specifies the number of replicas (or **pods**) we want for our deployment right from the start.
`--port=80:` This indicates the **port** that the image will expose.

To verify that our deployment was successful, we can use:

`kubectl get deployments`{{exec}}

and

`kubectl get pods -o wide`{{exec}}.

Now, to access the default web page of nginx, we’d typically need to get the IP address of the pods and call them directly. However, since pods can change **quickly**, this isn’t the most efficient method. That’s where a **Service** comes into play!

Please make sure to run `kubectl create deployment itsm-srv-deploy --image=nginx:alpine --replicas=3 --port=80`{{exec}}, `kubectl get deployments`{{exec}} and `kubectl get pods -o wide`{{exec}}before clicking on Check. This will help us confirm that everything is set up correctly.

