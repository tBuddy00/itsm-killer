# `kubectl` with `yaml`/`yml` files 


Exec `kubectl apply -f /itsm/itsm_service.yml`{{exec}}


and 

Exec `kubectl apply -f /itsm/itsm_deployment.yaml`{{exec}}

`kubectl rollout restart deployment/itsmdeploy`{{exec}}


Challenge: 
* Create a `itsm_secret.yml` file with content.
* Retrieve the secret using `kubectl`

