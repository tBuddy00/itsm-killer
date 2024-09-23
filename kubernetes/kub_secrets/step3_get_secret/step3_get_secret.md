## Retrieve a secret

In our previous Kubernetes scenarios, we learned how to access data using a `jsonpath` query. Let’s apply that to retrieve one of our secrets.

Running the command:

`kubectl get secret app-file-creds -o jsonpath='{.data}'`{{exec}}

will give us something like this:

```
{
    "password":"aXRzbV9wYXNzd29yZA==",
    "username":"aXRzbV91c2Vy"
}
```

You may notice that the values are not exactly what we initially set. That's because the values are encoded in base64.

To decode these values and reveal the actual sensitive data, we can use `jsonpath` along with the `base64` decoding tool.

For example, to decode the `username`, we can run:

`kubectl get secret app-file-creds -o jsonpath='{.data.username}' | base64 --decode`{{exec}}

To decode the `password`, we can run:

`kubectl get secret app-file-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}}


## Challenge

Let's now reveal the secret from the very first one we created directly from the terminal—the one where we entered the credentials manually.

To retrieve and decode the `username` from that secret, you can use the following command:

`kubectl get secret app-user-creds -o jsonpath='{.data.username}' | base64 --decode`{{exec}}

And for the password, simply run:

`kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}}

This will reveal the original values we set up for our credentials.

Please make sure to run `kubectl get secret app-file-creds -o jsonpath='{.data}'`{{exec}}, `kubectl get secret app-file-creds -o jsonpath='{.data.username}' | base64 --decode`{{exec}} and `kubectl get secret app-file-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.
