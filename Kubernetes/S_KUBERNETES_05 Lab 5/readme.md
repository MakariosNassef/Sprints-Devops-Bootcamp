# FINAL LAB
## 1- create a namespace iti-devops
![image](https://user-images.githubusercontent.com/28235504/215990075-12ee747d-d85b-49fc-b76d-bc22b9adb7a2.png)

## 2- create a service account iti-sa-devops under the same namespace
![image](https://user-images.githubusercontent.com/28235504/215990160-27be190c-ca1d-498c-8a49-ba14e7820333.png)

## 3- create a clusteRole which should be named as cluster-role-devops to grant permissions
“get”,”list”,”watch”,”create”,”patch”,”update” to “configMaps”,”secrets”,”endpoints”,”nodes”,”pods”,”services”,”namespaces”,”events”,”serviceAccou nts”.
![image](https://user-images.githubusercontent.com/28235504/215990238-68820117-9fed-475b-babe-1f65d404449f.png)
![Screenshot from 2023-02-01 10-26-04](https://user-images.githubusercontent.com/28235504/215989937-6969b35d-de4a-4864-85a0-85de07146dc8.png)

## 4- create a ClusterRoleBinding which should be named as cluster-role-binding-devops under the same namespace. Define roleRef apiGroup should be rbac.
authorization.k8s.io . Kind should be ClusterRole, name should be cluster-role-devops and subjects kind should be ServiceAccount: name should be iti-sadevops and namespace should be iti-devops

## 5- What is the difference between statefulSets and deployments?

## 6- Set up Ingress on Minikube with the NGINX Ingress Controller play around with paths , you can create more than 2 deployments if you like
https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
