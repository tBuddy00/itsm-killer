# Scaling a Deployment

We learned that Kubernetes is used especially with *scaling* in mind. So how can we scale our application?

We can still see, that our former deployment is running.

`kubectl get deployments`{{exec}}.

| NAME                  | READY | UP-TO-DATE  | AVAILABLE | AGE | 
| --------------------- |:-----:| -----------:| ---------:| ---:|
| itsm-demo-deployment  |  1/1  | 1           | 1         |  4s |

Note, that we have 1 pod there. 

To scale our deployment we enter the following command:

`kubectl scale deployment/itsm-demo-deployment --replicas=3`{{exec}}

`kubectl scale` is the command for that. As parameters, we name the deployment - `deployment/itsm-demo-deployment` and with the flag `--replicas`, we set the new pod count. 

The response should be: *deployment.apps/itsm-demo-deployment scaled*

> NOTICE!
> On the terminal we have auto-completion for kubectl. After typing "kubectl \<space\>" you can always hit the 'tab' key twice to get possible options for the next term.

After executing the command to scale our deployment, we can verify the result with `kubectl get deployments`

| NAME                  | READY | UP-TO-DATE  | AVAILABLE |   AGE  | 
| --------------------- |:-----:| -----------:| ---------:| ------:|
| itsm-demo-deployment  |  3/3  | 3           | 3         |  5m14s |
	
It might be the case that you'll see a **1/3** under the READY column. In this case the new pods are still spinning up. Wait a couple of seconds and repeat the command. 


The scaling worked! Again, we can check for the additional pods using `kubectl get pods`.

`kubectl get pods -o wide`{{exec}}

| NAME                                    | READY | STATUS  | RESTARTS |  AGE | IP            | NODE        | NOMINATED NODE | READINESS GATES |
| --------------------------------------- |:-----:| -------:| :--------| :---:| :------------:| :----------:| :-------------:| :--------------:|
| itsm-demo-deployment-xxxxxxxxxx-**xxxxy**   |  1/1  | Running | 0        |  13s | 192.168.0.7   | controlplane| \<None\>       | \<None\>        |
| itsm-demo-deployment-xxxxxxxxxx-**xxxxx**   |  1/1  | Running | 0        |  26m | 192.168.0.6   | controlplane| \<None\>       | \<None\>        |
| itsm-demo-deployment-xxxxxxxxxx-**xxxxz**   |  1/1  | Running | 0        |  13s | 192.168.0.8   | controlplane| \<None\>       | \<None\>        |

This time, we enhanced the command with an additional flag `-o wide`. That gives is more detailed information. Interesting for us is the *Node*, where the pods are running on. We find our **controlplane** node from the beginning! Furthermore, we can see the **IP** for each pod.  

Let's gather these IPs and run `curl` on it, so we can verify that our `nginx` is really running on them: 

We grab the IPs with: 

`export DIPS=$(kubectl get pods -o jsonpath='{.items[*].status.podIP}');echo $DIPS`{{exec}}

Here, you see an alternative way of parsing the information. With `kubectl get pods -o json` we get the information as a type of `json`. Then, we can use `-o jsonpath=` to write a parsing syntax.
You can find more details and examples in the [docs](https://kubernetes.io/docs/reference/kubectl/jsonpath/).


Finally, we display the content of port 80 for each of the IPs: 

`curl $DIPS`{{exec}}
