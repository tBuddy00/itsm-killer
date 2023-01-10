
# Create a Secret with files

Another way of creating secrets is to use values from a different place, files for example. 
In this scenario we have the value for the `username` and `password` in separate files under `/itsm`.

Let's check them out.

`cd /itsm; ls -la`{{exec}}

```
total 16
drwxr-xr-x  2 root root 4096 Jan  9 17:53 .
drwxr-xr-x 20 root root 4096 Jan  9 17:53 ..
-rw-r--r--  1 root root   13 Jan  9 17:53 pass.txt
-rw-r--r--  1 root root    9 Jan  9 17:53 user.txt
```

We find the files `user.txt` and `pass.txt`, both containing the values for our secret.

Let's adjust our previous secret generation command, to make use of these files:

`kubectl create secret generic app-file-creds --from-file=username=./user.txt --from-file=password=./pass.txt`{{exec}}

We should get *secret/app-file-creds created* as a response.

Again, we can verify that with `kubectl`:

`kubectl get secrets`{{exec}}

| NAME            |     TYPE    | DATA  |  AGE  | 
| --------------- |:-----------:| -----:| -----:|
| app-user-creds  |  Opaque     |  2    | 14m   |
| app-file-creds  |  Opaque     |  2    | 40s   |

We see that our secret with the name `app-file-creds` is indeed available!

Later, when accessing the credentials, we can use `kubectl describe` in order to get some meta information about the specific secret. Note, that this command won't expose sensitive information as for example the `keys`' values

`kubectl describe secret app-file-creds`{{exec}}

```
Name:         app-file-creds
Namespace:    default
Labels:       <none>
Annotations:  <none>

Type:  Opaque

Data
====
password:  13 bytes
username:  9 bytes
```

From `kubectl describe` we get for example the `keys` as well as the `type` of the secret. 

Now, it would be interesting to know, how we can actually access the secret.
