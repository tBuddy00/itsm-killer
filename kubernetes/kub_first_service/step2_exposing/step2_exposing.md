# Creating a Service with `expose`

A **Service** acts as a `proxy` between users and your deployment, ensuring requests are routed to the right place using labels. It allows you to access your application without needing to track individual pod IPs.

To view all existing services, simply use:

`kubectl get services`{{exec}}

You'll see a table like the following:

| NAME        |     TYPE    | CLUSTER-IP  | EXTERNAL-IP | PORT(S)  | AGE | 
| ----------- |:-----------:| -----------:| :-----------| --------:| ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1  | \<none\>    |  443/TCP | 18d |

Here, you can quickly observe the *kubernetes service*, including its *type*, *IP*, and *port*.

To easily create a service for your deployment, you can use the `kubectl expose` command. For example:

`kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv"`{{exec}}

You should see the confirmation: *service/webshop-srv exposed*

This command selects `deployment/itsm-srv-deploy` and exposes it through a service. We also define a port mapping. The `target-port` (80) is the port our nginx pod listens to, and we map this to the `service port` (8080). This means any traffic coming to the service on port **8080** is directed to one of our pods on port **80**.

To confirm the service was created, run:

`kubectl get services`{{exec}}

| NAME        |     TYPE    | CLUSTER-IP  | EXTERNAL-IP | PORT(S)  | AGE | 
| ----------- |:-----------:| -----------:| :-----------| --------:| ---:|
| kubernetes  |  ClusterIP  |  10.xx.0.1  | \<none\>           |  443/TCP | 18d |
| webshop-srv  |  ClusterIP  |  *10.xxx.xxx.xxx*  | \<none\>   |  8080/TCP | 8s |

Now, instead of checking individual pod IPs, you can also easily access your nginx app through the service. Let’s give it a try!

First, get the IP of your service:

`export SRVIP=$(kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}');echo $SRVIP`{{exec}}

Then, call your service:

`curl $SRVIP:8080`{{exec}}

You should now see the familiar nginx welcome page!

Please make sure to run `kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv"`{{exec}}, `export SRVIP=$(kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}');echo $SRVIP`{{exec}} and `curl $SRVIP:8080`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.