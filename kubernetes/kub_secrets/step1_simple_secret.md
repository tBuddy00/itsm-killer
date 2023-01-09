

# Create simple secret

Run `kubectl get secrets`{{exec}}

kubectl create secret generic db-user-pass \
    --from-literal=username=admin \
    --from-literal=password='S!B\*d$zDsb='




## Create secret with files

kubectl create secret generic db-user-pass \
    --from-file=username=./username.txt \
    --from-file=password=./password.txt


Run `kubectl get secrets`{{exec}}


kubectl describe secret db-user-pass

## Retrieve secrets

Run `kubectl get secret db-user-pass -o jsonpath='{.data}'`{{exec}}


{"password":"UyFCXCpkJHpEc2I9","username":"YWRtaW4="}



echo 'UyFCXCpkJHpEc2I9' | base64 --decode



kubectl get secret db-user-pass -o jsonpath='{.data.password}' | base64 --decode


## Edit secrets

kubectl edit secrets <secret-name>


## Delete secrets

kubectl delete secret db-user-pass