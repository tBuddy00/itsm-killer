# Creating a Service with `expose`

We can use a **Service** as a form of proxy that user interact with. Through labels the *service* knows, where to relay the requests. 

The general command to list all services is:

`kubectl get services`{{exec}}

You'll see a table like the following:

| NAME        |     TYPE    | CLUSTER-IP  | EXTERNAL-IP | PORT(S)  | AGE | 
| ----------- |:-----------:| -----------:| :-----------| --------:| ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1  | \<none\>           |  443/TCP | 18d |

Here you can see one already existing service called *kubernetes*, its *type*, the *IP* and *Port*.

An easy way to create a service for our deployment is `kubectl expose`.

A command to create the service could be as follows:

`kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv"`{{exec}}

We should receive a message:	*service/webshop-srv exposed*

With the command, we choose `deployment/itsm-srv-deploy` as deployment that we want to expose with a service. Additionally, we configured a port mapping. The `target-port` describes the port of our deployment pod, where our *nginx* docker image is hosted. This `target-port` is mapped to the `port` ***8080*** of our service. With that, any traffic coming into our service with `name` *webshop-srv* is routed to the `target-port` *80* of one of our pods. 

We can verify the successful creation of our service again by using `kubectl`:

`kubectl get services`{{exec}}

| NAME        |     TYPE    | CLUSTER-IP  | EXTERNAL-IP | PORT(S)  | AGE | 
| ----------- |:-----------:| -----------:| :-----------| --------:| ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1  | \<none\>           |  443/TCP | 18d |
| webshop-srv  |  ClusterIP  |  *10.xxx.xxx.xxx*  | \<none\>           |  8080/TCP | 8s |

Note that the Port for our service is *8080/TCP*.

Now we can call our nginx application, without knowing the current pod ips, but rather through calling our service. Let's give it a try..

Getting the IP of our service:

`export SRVIP=$(kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}');echo $SRVIP`{{exec}}

Calling our service:

`curl $SRVIP:8080`{{exec}}

We should see the infamous nginx welcome page. 