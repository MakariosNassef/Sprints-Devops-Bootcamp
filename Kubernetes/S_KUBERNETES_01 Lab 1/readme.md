# K8S 
Pre requisite: Install k8s cluster (minikube) + kubectl 
Notes: minikube can be deployed as a VM, a container 
Start it using minikube start --driver=docker OR minikube start --driver=virtualbox 
This makes kubectl configured to use “minikube” cluster and “default” namespace my default 
 
### 1. Create a  pod with the name “imperative-nginx” and with the image nginx and latest tag. using Imperative command (not yaml).
> $ kubectl run  imperative-nginx --image=nginx
![image](https://user-images.githubusercontent.com/28235504/213189148-161acd66-7b9d-4c82-946d-c83734260e7e.png)

### 2. Create a pod with the name webserver and with the image “nginx123” Use a pod-definition YAML file. 
> ![image](https://user-images.githubusercontent.com/28235504/213192631-394dd058-9e58-4fc8-9b30-726edacf8a70.png)
> kubectl apply -f  nginx123.yaml <br>    
### 3. What is the nginx pod status?
> Terminating <br>    
### 4. Change the nginx pod image to “nginx” check the status again 
> Running <br>    
### 5. How many pods are running in the system? Type the command to show this 
> kubectl get pods --field-selector=status.phase=Running
> ![image](https://user-images.githubusercontent.com/28235504/213194835-2a6675ca-2d45-4e44-8945-abc043e76a62.png) <br>
### 6. What does READY column in the output of get pods command indicate? 
> containers in each pod.
### 7. Delete first pod named imperative-nginx you just created. Type the command to do this  
> $ kubectl delete pod imperative-nginx
### 8. Which node is pod named webserver running on (list two commands to do this) 
> ![image](https://user-images.githubusercontent.com/28235504/213197972-4c3c14df-f580-46ce-9529-fd9ff5f51554.png)

### 9. Get a shell to the running container i.e ssh into it (figure out the command) 
> ![image](https://user-images.githubusercontent.com/28235504/213204176-4b0f531a-fb36-486b-b3b7-8aef6118e292.png)

### 10. Run cat /etc/os-release inside the container 
> ![image](https://user-images.githubusercontent.com/28235504/213204334-b8ccc972-54bf-46db-8960-f41a3e75f552.png)

### 11. Exit from the shell (/bin/bash) session 
> ![image](https://user-images.githubusercontent.com/28235504/213204559-f633f6e6-1144-4268-b2a1-c46ef9b43899.png)

### 12. Get logs of pod, what are logs and what they are used for? 
> ![image](https://user-images.githubusercontent.com/28235504/213205177-2721f303-0f48-44be-9cb5-3f78aa8571e7.png) <br>
- Logs are records of events that happen in a system.
- They are used to track and monitor system performance, detect errors, and troubleshoot problems. Logs can also be used to identify security threats, detect malicious activity, and audit user activity.

### 13. How many ReplicaSets exist on the system? 
> kubectl get rs <br>
- zero rs
### 14. create a ReplicaSet with name= replica-set-1 image= busybox replicas= 3 
> ![image](https://user-images.githubusercontent.com/28235504/213208313-08c3414a-14e0-43f0-804a-0d815e4d5de4.png)
<br>
> ![image](https://user-images.githubusercontent.com/28235504/213208966-80f19ff9-2034-4737-b6f9-ffd500977f76.png)
<br>
### 15. Scale the ReplicaSet replica-set-1 to 5 PODs. 
> ![image](https://user-images.githubusercontent.com/28235504/213210112-aebbe917-801f-42b6-84c3-48752180ab3e.png)

### 16. How many PODs are READY in the replica-set-1? 
> zero 

### 17. Delete any one of the 5 PODs then check How many PODs exist now? Why are there still 5 PODs, even after you deleted one? 
- ReplicaSet that is managing those Pods is configured to maintain a desired number of replicas at 5. The ReplicaSet automatically creates or deletes Pods to ensure that the desired number is met
