# Applying the files to the cluster

## Before Rollout

After we reviewed the files for our application deployment, it's time to perform the rollout. 

First let's make sure, that we're in the correct directory.

`cd /itsm; ls -la`{{exec}}

```
total 16
drwxr-xr-x  2 root root 4096 Jan 10 09:23 .
drwxr-xr-x 20 root root 4096 Jan 10 09:23 ..
-rw-r--r--  1 root root  454 Jan 10 09:23 itsm_deployment.yaml
-rw-r--r--  1 root root  214 Jan 10 09:23 itsm_service.yml
```

Next, let's check if there are any existing *deployments* or *services*:

`kubectl get deployments`{{exec}}

We should get: 

```
No resources found in default namespace.
```

The same goes for *services*.

`kubectl get services`{{exec}}

| NAME        |     TYPE    | CLUSTER-IP  | EXTERNAL-IP | PORT(S)  | AGE | 
| ----------- |:-----------:| -----------:| :-----------| --------:| ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1  | \<none\>    |  443/TCP | 18d |


## Rolling out the application

Let’s begin the rollout of our application! To apply our configuration files, we’ll use the command `kubectl apply -f <filename>`. It's considered best practice to **start with the service**, as this sets up the network configuration before deploying the application itself.

**Executing** `kubectl apply -f itsm_service.yml`{{exec}} will result in: 

```
service/demo-proxy created
```

Let's move on to deploying our application using the deployment file.

By **executing** the command `kubectl apply -f itsm_deployment.yaml`{{exec}}, you should see the message: 

```
deployment.apps/demo-deployment created.
```

## Verifying the Rollout

With the rollout complete, it's important to verify that everything is functioning as expected. We'll start by checking our *deployments* and *services*:

`kubectl get deployments`{{exec}}

| NAME                  | READY | UP-TO-DATE  | AVAILABLE | AGE | 
| --------------------- |:-----:| -----------:| ---------:| ---:|
| demo-deployment       |  3/3  | 3           | 3         |  4s |

Now, let's look at the services:

`kubectl get services`{{exec}}

| NAME        |     TYPE    | CLUSTER-IP         | EXTERNAL-IP | PORT(S)   | AGE | 
| ----------- |:-----------:| -----------------: | :-----------| --------: | ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1         | \<none\>    |  443/TCP  | 18d |
| demo-proxy  |  ClusterIP  |  *10.xxx.xxx.xxx*  | \<none\>    |  8083/TCP | 8s  |

As we can see, the deployment is running with 3 pods ready, and our service is active with a Cluster-IP, listening on `port` **8083**.

To confirm everything is working, let's try accessing our Nginx web server:

1. `export SRVIP=$(kubectl get service/demo-proxy -o jsonpath='{.spec.clusterIP}');echo $SRVIP`{{exec}}

2. `curl $SRVIP:8083`{{exec}}

You should now see the familiar Nginx welcome page! This confirms that the rollout using YAML files was a success.

Before clicking on check, please make sure to use `kubectl apply -f itsm_deployment.yaml`{{exec}}.

