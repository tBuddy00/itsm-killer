# Check for the Cluster

At first, we want to verify, that we have access to our cluster. 
In this scenario, a cluster was already setup for us as well as the necessary configuration to reach it. The fundamental command to interact with the cluster is `kubectl`. It accompanies us through the entire scenario, where we will take a peak at some of its functionalities. 

Let's execute `kubectl cluster-info`{{exec}} as the first command. It gives us IP addresses of the master and its services. With that we verified a successful connection to the cluster!

Another interesting part of our cluster would be knowing the amount of nodes we have.
We can use `kubectl get nodes`{{exec}} for that. The result should be similar to the following:

| NAME          | STATUS  | ROLES         | AGE  | VERSION | 
| ------------- |:-------:| -------------:| ----:| -------:|
| controlplane  | Ready   | control-plane | 17d  | v1.25.3 |


From the resulting table, we can see, that we have one node available. 