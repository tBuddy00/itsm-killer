# Kubernetes Deployment YAML

Now, let’s delve deeper into the service file to gain a better understanding of its configuration.

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

We can observe several similarities with the `itsm_service.yml` file. Once again, we declare the `apiVersion` for this *YAML* configuration. In this instance, we’re using `apps/v1`, which slightly differs from our previous example. While the specific distinctions are beyond the scope of this scenario, you can find more information in the [Kubernetes API documentation](https://kubernetes.io/docs/reference/using-api/) of Kubernetes.

The rest of the file closely follows the example configuration provided in the [Deployment documentation](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) on the Kubernetes website. It's definitely worth a read, especially for insights into additional configuration `keywords` that we won't cover here, such as accessing a private registry.

Now, let’s continue exploring the file. Here, we declare another `kind` of Kubernetes object: a configuration for a **Deployment**. In the `metadata` section, we assign a `name` to our deployment and set a `label`, which allows us to reference this deployment later on.

Moving to the `spec` section, we define the actual deployment configuration. This section includes all the details that we previously specified on the command line. For instance, we set the number of replicas to `3`, meaning that three pods will be running. Additionally, under the `template.spec` section, we specify the container image(s) to be used for our deployment and the `ports` that the image exposes.

Lastly, we have the `selector`, which defines the label(s) that this configuration targets.

Please use `cat /itsm/itsm_deployment.yaml`{{exec}} before clicking on Check.