# Adjusting the *yaml* files

One great advantage of defining our application in *YAML* files is the ability to version these configurations when changes are made. This approach ensures that updates are clear, trackable, and easy to maintain.

Now, let's explore how we can modify our existing application configuration.


## Updating the Service Configuration

Let's start by changing the port where our service is accessible.

Currently, it's set to **8083**. You can confirm this by running: `curl $SRVIP:8083`{{exec}}

To update it, we'll modify the `itsm_service.yml` file in the `/itsm` directory to listen on `port` **8084** instead.

`sed -i 's,port:.*,port: 8084,' itsm_service.yml`{{exec}}

> **Tip!** You can print the contents of the file to verify the change. By now, you should know what to look for and where to find it.

Next, let's apply the updated configuration to our cluster: Running `kubectl apply -f itsm_service.yml`{{exec}} should return:


*service/demo-proxy **configured***.

> Now, use the `kubectl` commands you've learned so far to verify the new `port` configuration!

Let's confirm that we can access the service on the new port:

`curl $SRVIP:8084`{{exec}}

You should see the familiar nginx welcome page again.


## Updating the Deployment Configurations

Now, let's change the deployment by scaling down the number of replicas.

> **Tip!** Use `kubectl` to check the current number of replicas before making changes!

We'll adjust the replica count to **2**: `sed -i 's,replicas:.*,replicas: 2,' itsm_deployment.yaml`{{exec}}

Apply this change to the cluster: `kubectl apply -f itsm_deployment.yaml`{{exec}}

You should see a response like: 

```
deployment.apps/demo-deployment configured
```

Verify the change by running:

`kubectl get deployments`{{exec}} and `kubectl get pods`{{exec}}

Great job! You've successfully updated your deployment.

> NOTE! Depending on the type of changes you make, you may need to run an additional command to apply the changes: `kubectl rollout restart deployment/demo-deployment`{{exec}}

## Challenge 

Congratulations on reaching this point! 🎉

By now, you should be familiar with using `kubectl`, managing `deployments`, `services`, and `secrets`, and the differences between command-line configuration and *YAML* file usage.

To further solidify your skills, try the following challenges: You can continue in this environment or start fresh in the **[Kubernetes Playground](https://killercoda.com/silent-education/course/kubernetes/kubernetes-playground)**.

### Challenge 1: Creating a *itsm-secret.yaml*

* Create a `itsm_secret.yaml` object yaml file with the appropriate content.

* Perform a rollout of the secret on the cluster. 

* Retrieve the secret using `kubectl`

### Challenge 2: Write your own deployment and service YAML files

* search on [*docker.io*](https://hub.docker.com/) for an application to roll out (e.g. tomcat)

* Write a *deployment.yaml* and *service.yaml* file for the application

* Perform a rollout of your application on the cluster

* Use `kubectl` to verify all steps and configurations

Good luck, and happy deploying! 🚀
