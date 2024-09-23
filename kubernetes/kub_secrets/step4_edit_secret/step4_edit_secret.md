# Edit secrets

## Previous Challenge

In the last challenge, we focused on retrieving the username and password from our very first secret.

First, we can list the available secrets by running:

`kubectl get secrets`{{exec}}

From the output, you'll spot the secret name `app-user-creds`.

Next, we’ll adjust our previous commands to reveal the values stored inside.

To display the `username`, use:

`kubectl get secret app-user-creds -o jsonpath='{.data.username}' | base64 --decode`{{exec}}

To reveal the `password`, execute: 

`kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}}

## Editing a secret

Sometimes, we might need to update a secret—whether for security reasons or regular updates.

Let's update the password in our `app-user-creds` secret.

First, generate a new *base64-encoded* password:

`echo "AnewPassword!" | base64`{{exec}}

The result will look like this: `QW5ld1Bhc3N3b3JkIQo=`

Next, we’ll replace the old password using `kubectl`:

`kubectl edit secrets app-user-creds`{{exec}}

This command will open the default editor (likely `vim`). Here’s how to proceed:

* Press `<i>` to **enter** *insert mode*.
* Replace the old *base64-encoded* password with the new one.
* Press `<Esc>` to **exit** *insert mode*.
* **Save** and exit by typing `:x`.

> **TIP!** If you prefer using a different editor, such as nano, you can temporarily override the default one by running: `EDITOR=nano kubectl edit secrets app-user-creds`{{exec}}. Make your edits, save with `ctrl+o`, and exit with `ctrl+x`.

Finally, let's confirm the new password was successfully updated:

`kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}}

You should now see the newly set password: `AnewPassword!`.

Please make sure to run `kubectl get secrets`{{exec}}, `echo "AnewPassword!" | base64`{{exec}} and `kubectl edit secrets app-user-creds`{{exec}} and `kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode`{{exec}} before clicking on Check. This will help us confirm that everything is set up correctly.
