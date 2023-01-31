### 1- Create ConfgMap or MongoDB EndPoint. ( The MondoDB sevice name)
- DB_URL:mongo-service
- name of clusterIP service attached to db-deployment

### 2- Create A secret or MongoDB User & PWD
- USER_NAME: mongouser
- USER_PWD: mongopassword
### 3- Create MongoDB Deployment Applicaton with Internal service (ClusterIp) Mongo DB needs
username + password to operate
Vars needed in mongoDB:
- MONGO_INITDB_ROOT_USERNAME: root
- MONGO_INITDB_ROOT_PASSWORD: example
### 4- Create webApp Deployment(FrontEnd( with external service) and it needs to access MongoDb,
so it needs username+ password + mongodb endpoint (mongodb service) container runs on
3000

## from number 1:4 all yaml file in this link
https://github.com/MakariosNassef/Sprints-Devops-Bootcamp/tree/main/Kubernetes/S_KUBERNETES_03%20Lab%203/kubernetes%20manifest%20file

### 8- How many Nodes exist on the system?
2 node 

### 9- Do you see any taints on master ?
zero taints

### 10- Apply a label color=blue to the master node
kubectl label node controlplane color=blue

### 11- Create a new deployment named blue with the nginx image and 3 replicas
Set Node Afnity to the deployment to place the pods on master only
NodeAfnity: requiredDuringSchedulingIgnoredDuringExecuton
Key: color
values: blue

### 12- Create a taint on node01 with key o spray, value o mortein and efect o NoSchedule
kubectl taint node node01  spray=mortein:NoSchedule

### 13- Create a new pod with the NGINX image, and Pod name as mosquito
kubectl run mosquito --image inginx

### 14- What is the state o the mosquito POD?
Panding

### 15- Create another pod named bee with the NGINX image, which has a toleraton set to
the taint Mortein
Image name: nginx
Key: spray
Value: mortein
Efect: NoSchedule
Status: Running
