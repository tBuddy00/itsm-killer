# Create a simple secret


Secrets provide an easy and secure way to manage sensitive data for your deployed applications. They allow for scoped *storage*, *access*, and *editing* of **sensitive information**.

>**NOTE:**
>By default, all of our resources, including secrets, are created within the **default namespace**. We will explore namespaces in more detail later on.

To check for any existing `secrets`, we can use `kubectl`:

Running `kubectl get secrets`{{exec}} will list all the secrets in the current namespace (which is *default* in this case).

Since we haven't set up any secrets yet, the response should be: 

```
No resources found in default namespace.
```

Now, let's create a secret using the `kubectl create` command:

`kubectl create secret generic app-user-creds --from-literal=username=admin --from-literal=password='PWD$from?admin='`{{exec}}

Here’s what the command does:

* `kubectl create secret`: creates a new secret object

* We specify the type as *generic*, which is commonly used for key-value pairs. You can explore other types by checking the [secrets documentation](https://kubernetes.io/docs/concepts/configuration/secret/) or using terminal auto-completion.

* We add two key-value pairs: a *username* with the value of *admin* and a *password* with the value of *PWD$from?admin=*.


> **TIP:**
> You can use kubectl's auto-completion feature. Just type `"kubectl <space>"` and press 'tab' twice to see the possible options!

To confirm the secret was successfully created, run

`kubectl get secrets`{{exec}}

We should be presented with the following table:

| NAME            |     TYPE    | DATA  | AGE  | 
| --------------- |:-----------:| -----:| ----:|
| app-user-creds  |  Opaque     |  2    | 3s   |

This shows that the secret `app-user-creds` has been created, with `2` data entries (username and password).


Please make sure to run `kubectl get secrets`{{exec}} and `kubectl create secret generic app-user-creds --from-literal=username=admin --from-literal=password='PWD$from?admin='`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.
