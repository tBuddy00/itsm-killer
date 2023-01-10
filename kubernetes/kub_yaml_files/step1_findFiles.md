# `kubectl` with `yaml`/`yml` files 

In the previous scenarios, we used `kubectl` for rolling our application. For the configuration, we used terminal parameters. This is a fast but not very maintainable way. 

A better way would be, if we describe our deployment in files and use them on the cluster. This way, we can also perform a versioning on them and get log information, why certain configurations were changed.

Our application will consist of a *deployment* and a *service*.

In order to get an idea how to write the files accordingly, we can check out the [Deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) and [Service](https://kubernetes.io/docs/concepts/services-networking/service/) template from the Kubernetes docs.

In this example, the deployment and service file are provided under our application deployment folder `/itsm`.

Let's check them out.
`cd /itsm; ls -la`{{exec}}

Within the folder, we find a `itsm_service.yml` and `itsm_deployment.yaml` file.

>NOTICE! One of the files ends with `.yml` and the other one with `.yaml`. The reason is, that both are accepted file endings for *yaml* files. You'll find both versions out in the wild. This way, we cover both cases.

>NOTICE!  `Yaml` files are notoriously famous for their ***indent structure*** and the errors that come with that. When creating a `yaml` file yourself, it is highly recommended that you use some kind of tool assistance (Linter / Syntax checker).
