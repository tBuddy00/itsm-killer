# Kubernetes Service YAML

Now, let’s take a closer look at the service file to understand its configuration better.

`cat /itsm/itsm_service.yml`{{exec}}

```yaml
apiVersion: v1
kind: Service
metadata:
  name: demo-proxy
  labels:
    app: itsm-server
spec:
  selector:
    app: itsm-server
  ports:
    - name: https
      targetPort: 80
      port: 8083  
      protocol: TCP
```

Let’s take a moment to examine the `apiVersion` field. This field specifies the API version of this configuration file, which determines the available `keywords` you can use.

The second entry you’ll notice is `kind`. As you may remember from our earlier scenarios, Kubernetes employs the term [object](https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/) to describe its various components. The `kind` field allows you to define which type of object this configuration pertains to.

Moving on to the `metadata` section, here you can specify the name of your service. In this case, we’ve named it *demo-proxy*.

Next, you’ll find the `labels` section. Labels play a crucial role in simplifying the process of **retrieving** or **configuring** Kubernetes objects that share certain characteristics.

The corresponding counterpart to labels are the `selectors`, which enable you to perform actions on all objects that match the *selected* label(s).

Finally, we arrive at the `spec` section. For this service, we define a port mapping. Remember the keywords `containerPort`, `targetPort`, and `port`? Here, our service listens on `port` **8083**, while incoming traffic is routed to our pods via `targetPort` **80**, the port where our `nginx` Docker application is actively listening. We also assign a meaningful `name` to this port mapping to clarify its purpose and specify the `protocol` to be used.

This is a foundational configuration for a service. If you’d like to delve deeper into the intricacies of **Services** in Kubernetes, I encourage you to explore the [Service documentation](https://kubernetes.io/docs/concepts/services-networking/service/), where you can discover additional **keywords** and options for configuration.

Please use `cat /itsm/itsm_service.yml`{{exec}} before clicking on Check.