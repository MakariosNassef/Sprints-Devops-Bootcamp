Lab4
Question1:
Implement a vpc with cidr 10.0.0.0/16 with 2 public subnets with cidrs 10.0.0.0/24 and
10.0.0.2.0/24 with a load balancer to Distribute the traffic between 2 machines with nginx
installed in them as a proxy and 2 private subnets with the below cidrs 10.0.1.0/24 and
10.0.0.3.0/24 then a 2 instances attached in autoscaling in the private subnets with apache
installed without SSH and load balancer to install between them

Needed :
A screenshot from the autoscaling group after indicating the minimum ,maximum and desired
instances
Screenshot from the 2 target groups indicating the machines are healthy
Screenshot indicate the the machines BE WS are private
Screenshot from the public load balancer when you hit a request from it from a browser with a
response returned from the instances
