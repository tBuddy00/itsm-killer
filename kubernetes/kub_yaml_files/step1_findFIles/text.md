# `kubectl` with `yaml`/`yml` files 

In the previous scenarios, we utilized `kubectl` to roll out our application using terminal parameters. While this method is quick, it’s not very maintainable in the long run.

A more effective approach is to describe our deployment in configuration files that can be applied to the cluster. This not only allows for better organization but also enables version control, helping us keep track of changes and understand why specific configurations were modified.

For our application, we will be working with both a *deployment* and a *service*.

To get a clear idea of how to structure these files, we can refer to the [Deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) and [Service](https://kubernetes.io/docs/concepts/services-networking/service/) templates available in the Kubernetes documentation.

In this example, you will find the deployment and service files located in our application deployment folder at `/itsm`.

Let’s explore these files together by running the following command:

`cd /itsm; ls -la`{{exec}}

Within this folder, you will see two files: `itsm_service.yml` and `itsm_deployment.yaml`.

> **NOTE!** One of the files uses the `.yml` extension, while the other uses `.yaml`. Both extensions are acceptable for YAML files, and you’ll encounter both formats in the wild. By covering both cases, we ensure flexibility.

> **NOTE!** YAML files are well-known for their indentation structure and the errors that can arise from it. When creating a YAML file yourself, it’s highly recommended to use some kind of tool assistance, such as a linter or syntax checker, to avoid common pitfalls.

Before clicking on Check, please use `cd /itsm; ls -la`{{exec}}. 