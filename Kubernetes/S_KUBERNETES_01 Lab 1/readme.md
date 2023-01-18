# K8S 
Pre requisite: Install k8s cluster (minikube) + kubectl 
Notes: minikube can be deployed as a VM, a container 
Start it using minikube start --driver=docker OR minikube start --driver=virtualbox 
This makes kubectl configured to use “minikube” cluster and “default” namespace my default 
 
### 1. Create a  pod with the name “imperative-nginx” and with the image nginx and latest tag. using Imperative command (not yaml).
> mac@mac-Legion-5-15ACH6:~/Desktop/Kubernetes$ kubectl run  imperative-nginx --image=nginx

> pod/imperative-nginx created
### 2. Create a pod with the name webserver and with the image “nginx123” Use a pod-definition YAML file. 
``` ```
### 3. What is the nginx pod status?
``` ```
### 4. Change the nginx pod image to “nginx” check the status again 
```$ sdefsdfds```
### 5. How many pods are running in the system? Type the command to show this 
``` ```
### 6. What does READY column in the output of get pods command indicate? 
``` ```
### 7. Delete first pod named imperative-nginx you just created. Type the command to do this  
``` ```
### 8. Which node is pod named webserver running on (list two commands to do this) 
``` ```
### 9. Get a shell to the running container i.e ssh into it (figure out the command) 
``` ```
### 10. Run cat /etc/os-release inside the container 
``` ```
### 11. Exit from the shell (/bin/bash) session 
``` ```
### 12. Get logs of pod, what are logs and what they are used for? 
``` ```
### 13. How many ReplicaSets exist on the system? 
``` ```
### 14. create a ReplicaSet with name= replica-set-1 image= busybox replicas= 3 
``` ```
### 15. Scale the ReplicaSet replica-set-1 to 5 PODs. 
``` ```
### 16. How many PODs are READY in the replica-set-1? 
``` ```
### 17. Delete any one of the 5 PODs then check How many PODs exist now? Why are there still 5 PODs, even after you deleted one? 
``` ```