# FINAL LAB
## 1- create a namespace iti-devops

## 2- create a service account iti-sa-devops under the same namespace

## 3- create a clusteRole which should be named as cluster-role-devops to grant permissions
“get”,”list”,”watch”,”create”,”patch”,”update” to “configMaps”,”secrets”,”endpoints”,”nodes”,”pods”,”services”,”namespaces”,”events”,”serviceAccou nts”.



## 4- create a ClusterRoleBinding which should be named as cluster-role-binding-devops under the same namespace. Define roleRef apiGroup should be rbac.
authorization.k8s.io . Kind should be ClusterRole, name should be cluster-role-devops and subjects kind should be ServiceAccount: name should be iti-sadevops and namespace should be iti-devops

## 5- What is the difference between statefulSets and deployments?

## 6- Set up Ingress on Minikube with the NGINX Ingress Controller play around with paths , you can create more than 2 deployments if you like
https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
