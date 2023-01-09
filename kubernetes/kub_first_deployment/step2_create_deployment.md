# Creating our first Deployment

It's time rollout our first application to the cluster. For this, we will create a **deployment**. As an example we'll use our trusted `nginx:alpine` image again.

To create a new deployment, we run the following command:

`kubectl create deployment itsm-demo-deployment --image=nginx:alpine`{{exec}}

Again, we're using `kubectl` to interact with our cluster. With `create`, we express our wish to create a new resource, followed by the term `deployment` which describes the specific kind. Next up, we declare the name of our deployment. In this case it's `itsm-demo-deployment`. Finally, we set the docker image to be used (`--image=`). In out case this will be `nginx` in the `alpine` version. This is mainly due to the reduced image size.

Executing the command, we should get a similiar response to the following:
```
deployment.apps/itsm-demo-deployment created
```

We can check on our deployment, by executing `kubectl get deployments`{{exec}}.

| NAME                  | READY | UP-TO-DATE  | AVAILABLE | AGE | 
| --------------------- |:-----:| -----------:| ---------:| ---:|
| itsm-demo-deployment  |  1/1  | 1           | 1         |  4s |

The command lists all our deployments. 

> NOTICE!
> All our resources - now and in the future - are created within the ***default namespace***.
> Namespaces are a different topic which we will cover at a later stage.

From the table we can see that we have our deployment successfully running on one pod.
We can even drill further down and get a *list of our pods*.
For that, we execute `kubectl get pods`{{exec}}.

| NAME                                    | READY | STATUS  | RESTARTS |  AGE | 
| --------------------------------------- |:-----:| -------:| :--------| :---:|
| itsm-demo-deployment-xxxxxxxxxx-xxxxx   |  1/1  | Running | 0        |  86s |

Here, we can see the name of the pods and their status. Furthermore, how often given pod restarted.

We can go even deeper and inspect details of a given pod. For that, we can either use `kubectl describe pods`{{exec}} to dump the information from all pods or we can use `kubectl describe pod <podname>`{{exec}} in order to retrieve the information of a specific pod only. 

Some things to note about the information:
1. **Labels:** we can check the associated labels to this pod.
1. **IPs:** We can get the associated IP(s) for this pod.
1. **Events:** We can gather some information regarding the deployment process. This is very helpful, when the deployment failed. The displayed information is very useful for debugging in that case.

With our deployment running, we can now try to access our nginx web server. Let's retrieve the IP from the pod.

`export DPIP=$(kubectl describe pods | grep "IP:" | tail -n 1 | cut -d " " -f14);echo $DPIP`{{exec}}

With the IP, let's use curl to access the pod on port 80:

`curl $DPIP`{{exec}}

We get the default page as a result. Later, we will see an easier method for parsing the information of `kubectl describe`. 