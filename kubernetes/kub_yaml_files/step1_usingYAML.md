# `kubectl` with `yaml`/`yml` files 

Exec `kubectl -f /itsm/itsm_deployment.yaml`{{exec}}

and 

Exec `kubectl -f /itsm/itsm_service.yaml`{{exec}}

`kubectl rollout restart deployment/itsmdeploy`{{exec}}


Challenge: 
* Create a `itsm_secret.yml` file with content.
* Retrieve the secret using `kubectl`

