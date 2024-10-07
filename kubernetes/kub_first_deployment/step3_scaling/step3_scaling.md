# Scaling a Deployment

Now that we've learned Kubernetes is built with scaling in mind, let’s explore how we can scale our application.

We can see that our current deployment is still running by checking with:

`kubectl get deployments`{{exec}}.

| NAME                  | READY | UP-TO-DATE  | AVAILABLE | AGE | 
| --------------------- |:-----:| -----------:| ---------:| ---:|
| itsm-demo-deployment  |  1/1  | 1           | 1         |  4s |

At the moment, we only have one pod running. To scale this up, simply run the following command:

`kubectl scale deployment/itsm-demo-deployment --replicas=3`{{exec}}

This tells Kubernetes to scale our deployment. The key parts of the command are:

* `kubectl scale`: This is the command used for scaling.
* `deployment/itsm-demo-deployment`: We specify which deployment to scale.
* `--replicas=3`: This sets the number of pods we want to run.

Once executed, you should see the response:

```
deployment.apps/itsm-demo-deployment scaled
```
> Tip: Take advantage of terminal auto-completion for kubectl commands! After typing "kubectl" and hitting the space key, you can press 'tab' twice to see the available options.

Now let’s verify the scaling with another check:

`kubectl get deployments`{{exec}}

| NAME                  | READY | UP-TO-DATE  | AVAILABLE |   AGE  | 
| --------------------- |:-----:| -----------:| ---------:| ------:|
| itsm-demo-deployment  |  3/3  | 3           | 3         |  5m14s |
	
If you see **1/3** under the READY column, don’t worry — it just means the new pods are still starting up. Wait a few seconds and run the command again.

Success! Our deployment has scaled to three pods. You can now list the additional pods with:

`kubectl get pods -o wide`{{exec}}

| NAME                                    | READY | STATUS  | RESTARTS |  AGE | IP            | NODE        | NOMINATED NODE | READINESS GATES |
| --------------------------------------- |:-----:| -------:| :--------| :---:| :------------:| :----------:| :-------------:| :--------------:|
| itsm-demo-deployment-xxxxxxxxxx-**xxxxy**   |  1/1  | Running | 0        |  13s | 192.168.0.7   | controlplane| \<None\>       | \<None\>        |
| itsm-demo-deployment-xxxxxxxxxx-**xxxxx**   |  1/1  | Running | 0        |  26m | 192.168.0.6   | controlplane| \<None\>       | \<None\>        |
| itsm-demo-deployment-xxxxxxxxxx-**xxxxz**   |  1/1  | Running | 0        |  13s | 192.168.0.8   | controlplane| \<None\>       | \<None\>        |

We’ve added the `-o wide` flag to show more detailed information, including the Node where each pod is running. In our case, we see they’re all running on the **controlplane** node from earlier. Each pod also has its own **IP** address.

To confirm that nginx is running on each pod, let’s grab the IP addresses and `curl` them:

`export DIPS=$(kubectl get pods -o jsonpath='{.items[*].status.podIP}');echo $DIPS`{{exec}} 

This command uses `jsonpath` to extract the pod IPs directly from the `JSON` output of `kubectl get pods -o json`. For more details on how this works, check out the [official docs](https://kubernetes.io/docs/reference/kubectl/jsonpath/).

Finally, we can curl each of these IPs to check that nginx is running:

`curl $DIPS`{{exec}}

You should see the default nginx page returned from each pod. Well done!


Please make sure to run `kubectl get pods`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.