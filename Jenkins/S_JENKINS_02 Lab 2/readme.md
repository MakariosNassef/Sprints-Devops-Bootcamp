## 01) What is Jenkins pipeline?
- Jenkins Pipeline is a suite of plugins that allows creating simple-to-complex build pipelines in Jenkins. It allows defining a continuous delivery pipeline as code, which can be version-controlled and kept along with the rest of the application code. The pipeline is defined using a Groovy-based domain-specific language (DSL) and can be stored in a file called a Jenkinsfile, which is then committed to source control.
- The pipeline can include various steps, such as building the application, running tests, creating and pushing Docker images, deploying to various environments, and more. These steps are executed in a defined order and can be automated, parallelized, and visualized within the Jenkins web interface.

## 02) What scripting language is Jenkins pipeline syntax based on?
- Jenkins Pipeline syntax is based on the Groovy programming language. Groovy is a dynamic, object-oriented language that runs on the Java Virtual Machine (JVM) and is well-suited for scripting and automation tasks. 

## 03) What are the ways you can write pipeline in Jenkins?
A Jenkinsfile can be written using two types of syntax - Declarative and Scripted.
Declarative and Scripted Pipelines are constructed fundamentally differently. Declarative Pipeline is a more recent feature of Jenkins Pipeline which:
- provides richer syntactical features over Scripted Pipeline syntax, and 
- is designed to make writing and reading Pipeline code easier. 
Many of the individual syntactical components (or "steps") written into a Jenkinsfile

## 04) Create jenkins pipeline for your repo and use script file (jenkinsfile) to write pipeline syntax ? 
![image](https://user-images.githubusercontent.com/28235504/217923277-08e498d1-f3a0-4714-9284-5a92b44ac774.png)
![image](https://user-images.githubusercontent.com/28235504/217923536-8437ff26-94ba-4550-b447-4f10c8d676c4.png)

## this is pipeline from private repo on github
```
pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                echo 'Hello, Build!'
            }
        }
        stage('Test') { 
            steps {
                echo 'Hello, Test!'
            }
        }
        stage('Deploy') { 
            steps {
                echo 'Hello, Deploy!'
            }
        }
    }
}
```
![image](https://user-images.githubusercontent.com/28235504/217923883-5e68d0c6-a948-4bc9-b76a-eceb8609aff4.png)
![image](https://user-images.githubusercontent.com/28235504/217923974-41c1969f-d058-460a-9906-eaf052086185.png)

## 05) Create another multibranch pipeline and filter branches to contain only (main , dev , test ) ? 
## this is pipeline from private repo on github with 3 branches
![image](https://user-images.githubusercontent.com/28235504/217937227-b7c7a8c3-8443-4f26-9364-da41ba43d029.png)
![image](https://user-images.githubusercontent.com/28235504/217937275-990e5219-56cd-44d8-9044-f064b096f0d1.png)
![image](https://user-images.githubusercontent.com/28235504/217937354-15cd14c3-ea37-45f3-90d1-7dd726ee1645.png)
![image](https://user-images.githubusercontent.com/28235504/217937686-05672485-6a96-4ff0-a6c6-43e1d088ca92.png)
![image](https://user-images.githubusercontent.com/28235504/217937732-de589005-a48e-48c3-845d-f91dcae28829.png)
![image](https://user-images.githubusercontent.com/28235504/217937765-23ba36ba-be67-418e-9c68-69fb19ed3ebe.png)


