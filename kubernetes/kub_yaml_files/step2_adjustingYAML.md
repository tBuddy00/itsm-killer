# Adjusting the files

`sed -i 's,port:.*,port: 8084,' itsm_service.yml`{{exec}}

`sed -i 's,replicas:.*,replicas: 3,' itsm_deployment.yaml`{{exec}}


`kubectl rollout restart deployment/demo-deployment`{{exec}}


`kubectl get deployments`{{exec}}

`kubectl get services`{{exec}}

Challenge: 
* Create a `itsm_secret.yml` file with content.
* Retrieve the secret using `kubectl`

