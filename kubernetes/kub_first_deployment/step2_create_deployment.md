# Creating our first Deployment


* `kubectl create deployment itsm-demo-deployment --image=nginx:alpine`{{exec}}
	* deployment.apps/itsm-demo-deployment created
	* get our first docker image running 
* `kubectl get deployments`{{exec}}
	* NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
	  itsm-demo-deployment   1/1     1            1           41s
* `kubectl get pods`{{exec}}

	NAME                                    READY   STATUS    RESTARTS   AGE
	itsm-demo-deployment-57c54b7ff9-qds7m    1/1     Running   0          86s

* `export DPIP=$(kubectl describe pods | grep "IP:" | tail -n 1 | cut -d " " -f14);echo $DPIP`{{exec}}
* `curl $DPIP`{{exec}}