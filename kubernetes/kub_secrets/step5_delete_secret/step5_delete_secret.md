## Delete a Secret

In this final step, we’ll learn how to delete a secret from our cluster.

First, let’s check which *secrets* are currently available:

`kubectl get secrets`{{exec}}

| NAME            |     TYPE    | DATA  |  AGE  | 
| --------------- |:-----------:| -----:| -----:|
| app-user-creds  |  Opaque     |  2    | 14m   |
| app-file-creds  |  Opaque     |  2    | 40s   |

Now, let's remove the first secret we created, called `app-user-creds`.

We can do that with the following command:

`kubectl delete secret app-user-creds`{{exec}}

By using `kubectl delete`, we are able to remove any object from the cluster.

After executing the command, you should see a confirmation message like: 

```
secret "app-user-creds" deleted.
```

Great!

And just like that, the secret is gone! 🎉



