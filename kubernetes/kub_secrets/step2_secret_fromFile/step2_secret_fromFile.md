# Create a Secret with files

Another way to create secrets is by using values stored in external files. In this scenario, we have the values for the `username` and `password` saved in separate files located under `/itsm`.

Let's take a look at these files:

`cd /itsm; ls -la`{{exec}}

```
total 16
drwxr-xr-x  2 root root 4096 Jan  9 17:53 .
drwxr-xr-x 20 root root 4096 Jan  9 17:53 ..
-rw-r--r--  1 root root   13 Jan  9 17:53 pass.txt
-rw-r--r--  1 root root    9 Jan  9 17:53 user.txt
```

Here, we find two files: `user.txt` and `pass.txt`, each containing the values for our secret.

Now, let’s update our previous command to create a secret using these files:

`kubectl create secret generic app-file-creds --from-file=username=./user.txt --from-file=password=./pass.txt`{{exec}}

The response should be: 

```
secret/app-file-creds created
```

To confirm its creation, we can check the list of secrets again with `kubectl`:

`kubectl get secrets`{{exec}}

| NAME            |     TYPE    | DATA  |  AGE  | 
| --------------- |:-----------:| -----:| -----:|
| app-user-creds  |  Opaque     |  2    | 14m   |
| app-file-creds  |  Opaque     |  2    | 40s   |

We can see that the secret `app-file-creds` is successfully created!

If we want to view some metadata about the secret (without exposing sensitive information), we can use the `kubectl describe` command:

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

This output shows details like the `keys` and the secret `type`, but does not reveal the sensitive values.

Next, we’ll explore how to access the values stored in this secret.

Please make sure you created the secret: `kubectl create secret generic app-file-creds --from-file=username=./user.txt --from-file=password=./pass.txt`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.