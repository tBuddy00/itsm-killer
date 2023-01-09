# Creating a Service with `expose`

* kubectl get services 
* kubectl expose deployment/itsm-srv-deploy --port=8080 --target-port=80 --name="webshop-srv"
	service/webshop-srv exposed
* kubectl get services 
	kubernetes    ClusterIP   10.96.0.1        <none>        443/TCP    17d
	webshop-srv   ClusterIP   10.111.211.146   <none>        8080/TCP   8s

* export SRVIP=`kubectl get service/webshop-srv -o jsonpath='{.spec.clusterIP}'`;echo $SRVIP
* curl $SRVIP:8080