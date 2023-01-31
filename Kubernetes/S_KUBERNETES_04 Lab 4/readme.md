LAB 4
## 1- Create a pod red with redis image and use an initContainer that uses the busybox image and sleeps for20 seconds

## 2- Create a pod named print-envars-greeting.
    1. Configure spec as, the container name should be print-env-container and use bash image.
    2. Create three environment variables:
        a. GREETING and its value should be “Welcome to”
        b. COMPANY and its value should be “DevOps”
        c. GROUP and its value should be “Industries”
    3. Use command to echo ["$(GREETING) $(COMPANY) $(GROUP)"]message.
    4. You can check the output using <kubctl logs -f [ pod-name ]>command

## 3- Create a Persistent Volume with the given specification.
```
Volume Name: pv-log
Storage: 100Mi
Access Modes: ReadWriteMany
Host Path: /pv/log
```

## 4- Create a Persistent Volume Claim with the given specification.
Volume Name: claim-log-1
Storage Request: 50Mi
Access Modes: ReadWriteMany

## 5- Create a webapp pod to use the persistent volume claim as its storage.
Name: webapp
Image Name: nginxVolume: PersistentVolumeClaim=claim-log-1
Volume Mount: /var/log/nginx

## 6- How many DaemonSets are created in the cluster in all namespaces?
    2 DaemonSets 
    by running kubectl get daemonsets --all-namespaces

## 7- what DaemonSets exist on the kube-system namespace?
    2 DaemonSets in kube-system
    by running  kubectl get daemonsets --all-namespaces -n kube-system

## 8- What is the image used by the POD deployed by the kube-proxy DaemonSet
    https://k8s.io/kube-proxy:v1.26.0

## 9- Deploy a DaemonSet for FluentD Logging. Use the given
    - specifications.
    - Name: elasticsearch
    - Namespace: kube-system
    - Image: k8s.gcr.io/fluentd-elasticsearch:1.20

## 10- Create a multi-container pod with 2 containers.
    - Name: yellow
    - Container 1 Name: lemon
    - Container 1 Image: busybox
    - Container 2 Name: gold
    - Container 2 Image: redis

## 11- create a POD called db-pod with the image mysql:5.7 then check the POD status
yaml file created and the status is ""Error""

## 12- why the db-pod status not ready
 required environment variable has not been defined.
## 13- Create a new secret named db-secret with the data given below.
    - Secret Name: db-secret
    - Secret 1: MYSQL_DATABASE=sql01
    - Secret 2: MYSQL_USER=user1
    - Secret3: MYSQL_PASSWORD=passwordSecret 4: MYSQL_ROOT_PASSWORD=password123

## 14- Configure db-pod to load environment variables from the newly created secret. Delete and recreate the pod if required.
