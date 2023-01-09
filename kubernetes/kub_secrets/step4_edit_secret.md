

# Edit secrets

## Previous challenge

The last challenge was to retrieve the username and password from our first secret. 

We can get the secret's name from `kubectl`

`kubectl get secrets`{{exec}}

There we see the name `app-user-creds`.

Now, we just need to adjust our previously used commands:

To reveal the `username`, we could use: 

`kubectl get secret app-user-creds -o jsonpath='{.data.username}' | base64 --decode`{{exec}}

To reveal the `password`, we could use: 

`kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}}


## Editing a secret

Sometimes we want to change the secret. For example on a time based schedule or if we believe the secret got compromised. 

Let's change the password within our `app-user-creds` secret. 

First we need a new password. Let's generate a new *base64* decoded one

`echo "AnewPassword!" | base64`{{exec}}

As a result, we should get: `QW5ld1Bhc3N3b3JkIQo=`

Now, we can replace the old password using the `kubectl` command again:

`kubectl edit secrets app-user-creds`{{exec}}

This will open the default editor where you can edit the secret. In this case, the editor is `vim`.
Press `<i>` to enter the *insert mode*. Copy the new base64 encoded password and replace it with the former one. Afterwards, press `<Esc>` to leave the *insert* mode. Finally, leave the editor with `:x`.

> NOTE! In this scenario, the default editor is ***vim***. If you're having trouble working with this tool, consider using the editor **nano**. You can use it by temprarily overwriting the default editor. The command would be `EDITOR=nano kubectl edit secrets app-user-creds`{{exec}}. Make the necessary changes and save them `ctrl+o`. Finally, close the editor with `ctrl+x`. You can see the available commands in the bottom of the editor. 


Let's verify that our change worked, by using `kubectl` to decrypt our secret password again:

`kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}}

We should see our newly set password `AnewPassword!`.