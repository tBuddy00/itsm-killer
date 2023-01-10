# Applying the files the cluster

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

Next, let's check if there are any existing *deployments*:
`kubectl get deployments`{{exec}}

We should get: *No resources found in default namespace.*

The same goes for *services*.

`kubectl get services`{{exec}}

| NAME        |     TYPE    | CLUSTER-IP  | EXTERNAL-IP | PORT(S)  | AGE | 
| ----------- |:-----------:| -----------:| :-----------| --------:| ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1  | \<none\>    |  443/TCP | 18d |


## Rollout
Now, let's start rolling out our Application. In order to use our files, we're using `kubectl apply -f <filename>`. As best practice it is said, that you should always ***start with the service***.

**Executing** `kubectl apply -f itsm_service.yml`{{exec}} results in: *service/demo-proxy created*

Let's continue with our deployment file.

**Executing** `kubectl apply -f itsm_deployment.yaml`{{exec}} results in: *deployment.apps/demo-deployment created*

## After Rollout

After we performed our rollout, we should check if everything worked as expected. 

Let's again start checking for our *deployments* and *services*:

`kubectl get deployments`{{exec}}

| NAME                  | READY | UP-TO-DATE  | AVAILABLE | AGE | 
| --------------------- |:-----:| -----------:| ---------:| ---:|
| demo-deployment       |  3/3  | 3           | 3         |  4s |



`kubectl get services`{{exec}}

| NAME        |     TYPE    | CLUSTER-IP         | EXTERNAL-IP | PORT(S)   | AGE | 
| ----------- |:-----------:| -----------------: | :-----------| --------: | ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1         | \<none\>    |  443/TCP  | 18d |
| demo-proxy  |  ClusterIP  |  *10.xxx.xxx.xxx*  | \<none\>    |  8083/TCP | 8s  |


We can see our deployment with 3 pods available and being ready. Furthermore, we find our service with a Cluster-IP and the service `port` of **8083**.

Let's try to access our nginx webserver. 

`export SRVIP=$(kubectl get service/demo-proxy -o jsonpath='{.spec.clusterIP}');echo $SRVIP`{{exec}}

`curl $SRVIP:8083`{{exec}}

There we see the infamous nginx welcome page! Our rollout with *yaml* files succeeded.
