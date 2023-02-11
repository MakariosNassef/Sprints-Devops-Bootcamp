S_JENKINS_03 Lab 3

## 1. what are different method to trigger pipeline in jenkins ? 
  1- Git Push: A pipeline can be triggered whenever changes are pushed to a Git repository. This is a common way to automatically build and test code as soon as it is committed.   <br>
  2- Timer: A pipeline can be set to run automatically at regular intervals, such as every hour or every day. This can be useful for running routine tasks, such as backups or database updates.   
  3- Manual Trigger: A pipeline can be triggered manually through the Jenkins interface. This is useful when a pipeline needs to be run on demand, such as when a bug is reported or a new feature is ready for testing.   
  4- Webhook: A pipeline can be triggered by a webhook, which is a way for one system to communicate with another. For example, a pipeline can be triggered whenever a new issue is created in a GitHub repository.   
  5- API Call: A pipeline can be triggered through the Jenkins API, which allows you to automate pipeline triggers from other scripts or applications.
## 2. what is the benefit of using master-slave architecture rather than building on master only ?
  1- Improved scalability: The ability to add more nodes or slaves as needed to accommodate growing demands. <br>
  2- Better resource utilization: The ability to dedicate nodes or slaves to specific tasks or jobs, allowing for optimal resource utilization. <br>
  3- Load balancing: The ability to distribute jobs and builds across multiple nodes, reducing stress on the master node and improving overall performance and stability. <br>
  4- Better handling of large-scale projects: The ability to accommodate large projects with many concurrent builds, making it easier to handle growing demands. <br>

## 3. what is different between authorization and authentication ? 
  Authentication and authorization are two vital information security processes that administrators use to protect systems and information.  <br>
  1- Authentication verifies the identity of a user or service. <br>
  2- authorization determines their access rights. <br>
   ![image](https://user-images.githubusercontent.com/28235504/218261406-40aa346b-540f-4cc5-bde8-ab32cc5f3a5b.png)

## 4. what is the benefit of making organization job in jenkins?
 
## 5. make jenkins-shared-library and make your jenkinsfile which you used in lab2 to point to this library 

## 6. bonus >>>>> try to make new slave as container and configure master to use it 
