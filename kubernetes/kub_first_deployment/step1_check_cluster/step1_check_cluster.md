# Check for the Cluster

First, let’s ensure we have access to our cluster.

In this scenario, the cluster and the necessary configuration to connect to it have already been set up for us. The main command we’ll be using to interact with the cluster is `kubectl`. This command will guide us throughout the scenario as we explore some of its key functionalities.

Let’s start by running `kubectl cluster-info`{{exec}}. This will provide us with the IP addresses of the master node and its services, confirming that we are successfully connected to the cluster!

Next, let’s check how many nodes are part of our cluster. To do this, we can use `kubectl get nodes`{{exec}}. The output should look something like this:

| NAME          | STATUS  | ROLES         | AGE  | VERSION | 
| ------------- |:-------:| -------------:| ----:| -------:|
| controlplane  | Ready   | control-plane | 17d  | v1.25.3 |

From this, we can see that we have one *node* available and ready to use.

Please make sure to run `kubectl cluster-info`{{exec}} and `kubectl get nodes`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.