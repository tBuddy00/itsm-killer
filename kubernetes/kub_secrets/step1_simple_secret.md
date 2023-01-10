# Create a simple secret

Secrets are an easy way to manage sensitive data for your deployed application. That means, scoped based *storage* and *access* as well as *editing* of the information. 

> NOTICE!
> All our objects - now and in the future - are created within the ***default namespace***.
> Namespaces are a different topic which we will cover at a later stage.

In order see possibly available `secrets` we can utilize `kubectl` again:

Running `kubectl get secrets`{{exec}} displays us all secrets in the current (here *default*) namespace.

Currently, we have no secrets set up, so the response should be: *No resources found in default namespace.*


An easy way to create a secret is to use `kubectl create` again with all necessary information provided: 

`kubectl create secret generic app-user-creds --from-literal=username=admin --from-literal=password='PWD$from?admin='`{{exec}}

With `kubectl create secret` we create a new object of type `secret`. Additionally, we set the `type` of secret. Here it is a `generic` one. Checkout the documentation of [secrets](https://kubernetes.io/docs/concepts/configuration/secret/) or use the auto-completion to see the alternatives!
Finally, for this simple example, we add two entries to that secret. Namely, a *username* `key` with value of *admin* and another `key` with the name *password* and `value` of *PWD$from?admin=*.


> NOTICE!
> On the terminal we have auto-completion for kubectl. After typing "kubectl \<space\>" you can always hit the 'tab' key twice to get possible options for the next term.

We can verify the successful creation by using `kubectl` again:

`kubectl get secrets`{{exec}}

We should be presented with the following table:

| NAME            |     TYPE    | DATA  | AGE  | 
| --------------- |:-----------:| -----:| ----:|
| app-user-creds  |  Opaque     |  2    | 3s   |

We see our secret with name `app-user-creds` and the amount of key entries, which is `2` here.