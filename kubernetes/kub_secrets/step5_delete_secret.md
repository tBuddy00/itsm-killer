
## Delete a secret

The final lesson is about deleting a secret. 

First let's see which *secrets* we have available:

`kubectl get secrets`{{exec}}

| NAME            |     TYPE    | DATA  |  AGE  | 
| --------------- |:-----------:| -----:| -----:|
| app-user-creds  |  Opaque     |  2    | 14m   |
| app-file-creds  |  Opaque     |  2    | 40s   |


Let's delete the *secret* that we created first with the name `app-user-creds`.

Again, we're using `kubectl` for that:

`kubectl delete secret app-user-creds`{{exec}}

With `kubectl delete` we can delete objects from the cluster. 

Executing the command, we should get a result message, similar to: *secret "app-user-creds" deleted*

Great!