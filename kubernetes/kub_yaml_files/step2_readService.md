# Kubernetes Service YAML

Let's take a look at the service file. 

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

Take note of the `apiVersion` field. This declares the api version of this file and with that, which `keywords` are available. 

The second entry is `kind`. Recall from the first scenario, that Kubernetes uses the [object](https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/) term. With the `kind` entry you can select which kind of object this configuration belongs to.

Under the `metadata` section, we can set the `name` of the service. In our case we call it ***demo-proxy***.

Continuing, you'll find the `labels` section. Labels make it easier for you to ***retrieve*** or ***configure*** Kubernetes *objects*, that belong together in a certain way.

The matching counterpart are `selectors`, where you can perform actions to all objects, which match the *selected* label(s).

Lastly, we come to the `spec` section. For this service, we defined a port mapping. Remember the keywords `Containerport`, `targetPort`, and `Port`. Here, we access our service on the `port` **8083** and the incoming traffic gets routed to our pods on the `targetPort` **80**. That's the port where our `nginx` docker application listens on. We also give the port mapping a meaningful `name` about what this is about and select the `protocol` to be applied.


This is a very basic configuration of a service. You can check out the [Service](https://kubernetes.io/docs/concepts/services-networking/service/) docs, to find more about **Services** in Kubernetes and additional `keywords` that can be used for configuration.