# Adjusting the *yaml* files

One key benefit of having our application definition in *YAML* files is to be able of versioning the files in case of changes. This makes changes or clear and maintainable. 

Let's try to change or existing Application configuration.


## Changing Service Configuration

Let's switch the port of where our service can be accessed. 

Currently, that's **8083**.
`curl $SRVIP:8083`{{exec}}

Let's adjust the `itsm_service.yml` under `/itsm` to make the service listen on `port` **8084** now.

`sed -i 's,port:.*,port: 8084,' itsm_service.yml`{{exec}}

>You can print the content of the file to make sure the change really happened. By now, you should now, what and where to look for.

Let's apply the changed file to our cluster.
**Executing** `kubectl apply -f itsm_service.yml`{{exec}} should results in: 

*service/demo-proxy **configured***.


>Try to verify the new port with the `kubectl` command(s), you know so far!

Let's check if we can access our service on the new port:

`curl $SRVIP:8084`{{exec}}

Again, we should see the infamous nginx welcome page.


## Changing Deployment Configuration

Now, we'll try to change our deployment. Let's scale down the amount of replicas.

>By now, you should be able to get the current amount, using `kubectl`. Try to get the current amount!


Let's change the replica count to **2**.
`sed -i 's,replicas:.*,replicas: 2,' itsm_deployment.yaml`{{exec}}

Now, we apply our change to the cluster:
`kubectl apply -f itsm_deployment.yaml`{{exec}}
We should get a response like: *deployment.apps/demo-deployment configured*

Let's verify the successful change by using 

`kubectl get deployments`{{exec}} and `kubectl get pods`{{exec}}

Perfect! We successfully adjusted our deployment.


> NOTICE! Depending on the configuration adjustments being done. Sometimes we need to perform an additional command to let the changes take effect: `kubectl rollout restart deployment/demo-deployment`{{exec}}



## Challenge 

We've come quite far, **congratulation**!

By now, you should now about how to work with `kubectl`, `deployments`, `services`, and `secrets`. Furthermore, the difference on configuring on the command line as well as using *YAML* files. 

To strengthen your understanding, try the following challenges!
You can use this environment or start a new one on the **[Kubernetes playground](https://killercoda.com/silent-education/course/kubernetes/kubernetes-playground)**.

### Creating a *itsm-secret.yaml*
* Create a `itsm_secret.yaml` object yaml file with the appropriate content.
* Perform a rollout of the secret on the cluster. 
* Retrieve the secret using `kubectl`

### Write your own deployment and service YAML files

* search on [*docker.io*](https://hub.docker.com/) for an application to roll out (e.g. tomcat)
* Write a deployment.yaml and service.yaml file for the application
* Perform a rollout of your application on the cluster
* Use `kubectl` to verify all steps and configurations


