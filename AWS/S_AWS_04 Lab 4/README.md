:exclamation:  This is very important 
## And this is the link for the final lab in AWS, Lab 5.
https://github.com/MakariosNassef/Sprints-Devops-Bootcamp/tree/main/AWS/S_AWS_05%20Lab%205
 - 01-Lamdafun-s3-to-dynamoDB
 - 02-EKS

**Question1**
Implement a vpc with cidr 10.0.0.0/16 with 2 public subnets with cidrs 10.0.0.0/24 and
10.0.0.2.0/24 with a load balancer to Distribute the traffic between 2 machines with nginx
installed in them as a proxy and 2 private subnets with the below cidrs 10.0.1.0/24 and
10.0.0.3.0/24 then a 2 instances attached in autoscaling in the private subnets with apache
installed without SSH and load balancer to install between them

![Screenshot from 2022-12-25 21-43-18](https://user-images.githubusercontent.com/28235504/209480312-0a524286-32d0-4cce-bd77-ddc6a0f8147d.png)

**Question2:**
Create a vpc with cidr 10.0.0.0/16 with private subnet and a machine in it with apache installed
without ssh ,also we need to serve an application from S3 bucket .

![Screenshot from 2022-12-25 21-43-23](https://user-images.githubusercontent.com/28235504/209480323-475761cf-dc06-4e44-9d5c-183398796fac.png)

**Question3:**
Create a lambda function to copy a text file to an s3 called targetBucket-yourname (search for
the code)

![Screenshot from 2022-12-25 21-43-32](https://user-images.githubusercontent.com/28235504/209480330-233786b4-eeda-40f3-a1cb-fbaec7acd208.png)

**Question4:**
Create a lambda function to be triggered when you upload a file to s3 called sourcebucket-
yourname , the lambda will copy the uploaded file to an s3 with name target-bucket-yourname

![Screenshot from 2022-12-25 21-43-43](https://user-images.githubusercontent.com/28235504/209480333-b92a3cc2-cbf4-4d5c-9aa1-e4a088403d8a.png)

