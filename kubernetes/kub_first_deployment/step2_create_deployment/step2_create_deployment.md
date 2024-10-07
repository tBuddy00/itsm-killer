# Creating our first Deployment

Now it's time to roll out our first application to the cluster! We'll do this by creating a deployment. A *deployment* is a 'kind' of [Kubernetes object](https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/). Kubernetes has several different `kinds` of objects, and we’ll be exploring some of them in this and future scenarios.

For this example, we’ll use the familiar `nginx:alpine` image.

To create our new deployment, run the following command:

`kubectl create deployment itsm-demo-deployment --image=nginx:alpine`{{exec}}

Here’s a breakdown of what this does:

* we’re using `kubectl` to interact with our cluster.

* `create` indicates we want to create a new object.

* `deployment` specifies the type of object we’re creating.

* We then give our deployment a name (`itsm-demo-deployment`) and specify the Docker image we want to use (`nginx:alpine`), choosing this image for its small size.

After running the command, you should see a message like:

```
deployment.apps/itsm-demo-deployment created
```

To check the status of your deployment, run: `kubectl get deployments`{{exec}}

This will give you a table like this:

| NAME                  | READY | UP-TO-DATE  | AVAILABLE | AGE | 
| --------------------- |:-----:| -----------:| ---------:| ---:|
| itsm-demo-deployment  |  1/1  | 1           | 1         |  4s |

The command lists all our deployments.

> **NOTE!** All our objects, including this deployment, are created within the **default namespace**. We’ll discuss namespaces in more detail in a future lesson, covering topics such as:

1. Deployment level

2. Pod level

3. Inside the pod (application level)

From the table, we can see that our deployment is successfully running on one pod. To get more details, we can list all the pods by running:

`kubectl get pods`{{exec}}

You should see something like this:

| NAME                                    | READY | STATUS  | RESTARTS |  AGE | 
| --------------------------------------- |:-----:| -------:| :--------| :---:|
| itsm-demo-deployment-xxxxxxxxxx-xxxxx   |  1/1  | Running | 0        |  86s |

This shows the pod name, its status, and how many times it has restarted.

For more detailed information about any specific pod, you can run:

* `kubectl describe pods`{{exec}} (for all pods), or
* `kubectl describe pod <podname>`{{exec}} (for a specific pod).

This will give you details like:

1. **Labels:** Labels assigned to the pod.
2. **IPs:** The pod’s IP addresses.
3. **Events:** Events related to the pod’s lifecycle, helpful for troubleshooting deployment issues.

With the deployment running, let’s try accessing the nginx web server. First, we’ll retrieve the pod’s IP address:

`export DPIP=$(kubectl describe pods | grep "IP:" | tail -n 1 | cut -d " " -f14);echo $DPIP`{{exec}}

Now, use curl to access the nginx pod on port 80:

`curl $DPIP`{{exec}}

You should see the default nginx page as a result! In later steps, we’ll explore easier ways to retrieve this information from Kubernetes.

Please make sure to run `kubectl create deployment itsm-demo-deployment --image=nginx:alpine`{{exec}}, `kubectl get deployments`{{exec}}, `kubectl get pods`{{exec}}, `kubectl describe pods`{{exec}}, `export DPIP=$(kubectl describe pods | grep "IP:" | tail -n 1 | cut -d " " -f14);echo $DPIP`{{exec}} and `curl $DPIP`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.