## 01) What is Jenkins used for?
Jenkins is an open source continuous integration/continuous delivery and deployment (CI/CD) automation software DevOps tool written in the Java programming language. It is used to implement CI/CD workflows, called pipelines.
![jenkins-1-1024x485](https://user-images.githubusercontent.com/28235504/215786517-73cf756a-e442-4e69-bfa3-394101f4824a.png)


## 02) What is Jenkins agent? What is Jenkins executor (Build Executor)?
  - Agent
  An agent is typically a machine, or container, which connects to a Jenkins controller and executes tasks when directed by the controller.
  ![image](https://user-images.githubusercontent.com/28235504/215788259-0a9386b4-3bd1-4deb-a75c-ff1832497e27.png)

  - Executor
  A slot for execution of work defined by a Pipeline or job on a Node. A Node may have zero or more Executors configured which corresponds to how many concurrent Jobs or Pipelines are able to execute on that Node.

03) Explain Jenkins master-slave architecture?
![Screen Shot 2021-11-08 at 5 46 55 PM](https://user-images.githubusercontent.com/28235504/215790667-9ee2f1a1-739e-4158-9473-29b006d52f95.png)
- Jenkins Master and Slave architecture is a distributed architecture that allows Jenkins to scale horizontally. It consists of a master node that handles all the tasks related to scheduling builds, dispatching builds to the slaves for execution, monitoring slaves, and collecting build results. The slave nodes are responsible for executing the actual build jobs.

- The master node is responsible for managing all the slaves and dispatching builds to them. It also stores all the configuration information and job definitions. The master node can be configured to run multiple jobs in parallel by assigning each job to a different slave.

- The slave nodes are responsible for executing the actual build jobs. They connect to the master node using SSH or JNLP (Java Network Launch Protocol) and wait for instructions from the master node. Once they receive instructions, they execute the job as per the configuration provided by the master node. After completion of a job, they report back to the master with results of their execution.

The Master’s job is to handle:
 - Scheduling build jobs.
 - Dispatching builds to the slaves for the actual execution.
 - Monitor the slaves (possibly taking them online and offline as required).
 - Recording and presenting the build results.
 - A Master instance of Jenkins can also execute build jobs directly.
Jenkins Slaves:
 - It hears requests from the Jenkins Master instance.
 - Slaves can run on a variety of operating systems.
 - The job of a Slave is to do as they are told to, which involves executing build jobs dispatched by the Master.
 - You can configure a project to always run on a particular Slave machine, or a particular type of Slave machine, or simply let Jenkins pick the next available Slave.



05) Create free style project and link it to private git repo containing any dockerfile then biuld an image from this dockerfile and push it to private docker repo 
