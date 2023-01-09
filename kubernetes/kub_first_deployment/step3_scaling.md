# Scaling a Deployment



* `kubectl scale deployment/itsm-demo-deployment --replicas=3`{{exec}}

	deployment.apps/itsm-demo-deployment scaled
* `kubectl get deployments.apps`{{exec}}

	NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
	itsm-demo-deployment   3/3     3            3           5m14s
* `kubectl get pods -o wide`{{exec}}

NAME                                    READY   STATUS    RESTARTS   AGE   IP             NODE           NOMINATED NODE   READINESS GATES
itsm-demo-deployment-57c54b7ff9-j88v9   1/1     Running   0          13s   192.168.0.11   controlplane   <none>           <none>
itsm-demo-deployment-57c54b7ff9-nsvq4   1/1     Running   0          13s   192.168.0.13   controlplane   <none>           <none>
itsm-demo-deployment-57c54b7ff9-tkzsp   1/1     Running   0          13s   192.168.0.12   controlplane   <none>           <none>