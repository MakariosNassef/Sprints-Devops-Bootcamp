# K8S 
## lab 2 - day 2

1. How many Namespaces exist on the system?
    - Kubernetes starts with four initial namespaces
    - ![image](https://user-images.githubusercontent.com/28235504/213500122-7d5c3fba-e262-4799-86d1-2df370ee5a5e.png)

2-How many pods exist in the kube-system namespace?
    - ![image](https://user-images.githubusercontent.com/28235504/213501756-a6dc456f-7553-4255-8fa1-032218a99139.png)
    - ![image](https://user-images.githubusercontent.com/28235504/213504707-1464c7f1-d711-4e9b-98c3-e7bb83296046.png)

3. create a Deployment with
> name= deployment-1 <br>
> image= busybox <br>
> replicas= 3 <br>
    - ![image](https://user-images.githubusercontent.com/28235504/213505357-f83f9354-67b1-4451-86b9-b9334ca20c8b.png)
    - ![image](https://user-images.githubusercontent.com/28235504/213505748-d098a360-b6e2-43cc-9394-60d229f47569.png)
 
4. How many Deployments and ReplicaSets exist on the system now?
    - 1 deployment
    - 3 rs
5. How many pods are ready with the deployment-1?
    - 3 pods 
    - ![image](https://user-images.githubusercontent.com/28235504/213511512-9af1e85f-5a2a-47a9-97ac-58a496bec1d3.png)

6. Update deployment-1 image to nginx then check the ready pods again
    - ![image](https://user-images.githubusercontent.com/28235504/213513118-fd974c95-e59b-4ec9-9703-bd0c96f664d9.png)

8. Run kubectl describe deployment deployment-1 and check events What is the deployment strategy used to upgrade the deployment-1?
    - " Rolling Update Deployment  It replaces pods, one by one, of the previous version of our application with pods of the new version without any cluster downtime. "
    - ![image](https://user-images.githubusercontent.com/28235504/213513339-cc3efe7d-857e-4145-aa83-cc05635883fa.png)

8. Rollback the deployment-1 
    > $ kubectl rollout undo deployment/deployment-1
    > $ kubectl rollout history deployment/deployment-1

9. What is the used image with the deployment-1?
    > busybox

11. Create a deployment with <br>
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
    
    - ![image](https://user-images.githubusercontent.com/28235504/213532319-7058ef88-1126-4965-9614-bcc97100c1f9.png)
    - ![image](https://user-images.githubusercontent.com/28235504/213532155-09d31677-c3f6-42fa-b76a-13394b3631e1.png)
    - ![image](https://user-images.githubusercontent.com/28235504/213538268-3ac3f98c-7976-4291-98b1-2714dc86afc8.png)

