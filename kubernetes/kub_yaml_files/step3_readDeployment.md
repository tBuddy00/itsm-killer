# Kubernetes Deployment YAML

Let's take a look at the deployment file. 

`cat /itsm/itsm_deployment.yaml`{{exec}}

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: itsm-server
  name: demo-deployment
spec:
  replicas: 3
  template:
    metadata:
      labels:
        app: itsm-server
    spec:
      containers:
        - image: docker.io/library/nginx:alpine
          name: itsm-nginx
          imagePullPolicy: Always
          ports:
            - containerPort: 80
              protocol: TCP
  selector:
    matchLabels:
      app: itsm-server
```

We see quite some similarities, compared to the `itsm_service.yml`.
We again declare the `apiVersion` of this *yaml* configuration. You'll see a slight difference with us using `apps/v1` here. The exact differences are out of scope for this scenario, but you can get more information in the [API docs](https://kubernetes.io/docs/reference/using-api/) of Kubernetes.

For the rest, it follows pretty much the example configuration from the [Deployment docs](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) from Kubernetes. It's worth a read, especially when it comes to additional configurations `keywords` that are not covered here (e.g. Access to private registry).

Let's continue going through the file. You'll see that we have declared another `kind` of Kubernetes *object*. This time it's a configuration for a **Deployment**. Again, under the `metadata` section, we set a `name` for our deployment and a `label`, so we can address this deployment later on.

In the `spec` section, we perform our actual deployment configuration. You'll find all the details that we had previously defined on the command line. With `replicas` we set our pod count to **3**. Furthermore - under the `template.spec` section, we define the container image(s) to be used for our deployment as well as the `ports` that this image is exposing.

Finally, you'll find the `selector` that defines, which label(s) this configuration addresses. 