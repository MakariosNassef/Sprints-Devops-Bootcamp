# K8S 
## lab 2 - day 2

1. How many Namespaces exist on the system?
2-How many pods exist in the kube-system namespace?
3. create a Deployment with
> name= deployment-1 <br>
> image= busybox <br>
> replicas= 3 <br>
4. How many Deployments and ReplicaSets exist on the system now?
5. How many pods are ready with the deployment-1?
6. Update deployment-1 image to nginx then check the ready pods again
7. Run kubectl describe deployment deployment-1 and check events
What is the deployment strategy used to upgrade the deployment-1?
8. Rollback the deployment-1 
9. What is the used image with the deployment-1?
10. Create a deployment with <br>
> Name: dev-deploy <br>
> Image: redis <br>
> Replicas: 2<br>
> Namespace: dev<br>
> Resources Requests:<br>
> CPU: .5 vcpu<br>
> Mem: 1G<br>
> Resources Limits:<br>
> CPU: 1 vcpu<br>
> Mem: 2G<br>