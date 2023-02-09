01) What is Jenkins pipeline?
- Jenkins Pipeline is a suite of plugins that allows creating simple-to-complex build pipelines in Jenkins. It allows defining a continuous delivery pipeline as code, which can be version-controlled and kept along with the rest of the application code. The pipeline is defined using a Groovy-based domain-specific language (DSL) and can be stored in a file called a Jenkinsfile, which is then committed to source control.
- The pipeline can include various steps, such as building the application, running tests, creating and pushing Docker images, deploying to various environments, and more. These steps are executed in a defined order and can be automated, parallelized, and visualized within the Jenkins web interface.

02) What scripting language is Jenkins pipeline syntax based on?
- Jenkins Pipeline syntax is based on the Groovy programming language. Groovy is a dynamic, object-oriented language that runs on the Java Virtual Machine (JVM) and is well-suited for scripting and automation tasks. 

03) What are the ways you can write pipeline in Jenkins?
A Jenkinsfile can be written using two types of syntax - Declarative and Scripted.
Declarative and Scripted Pipelines are constructed fundamentally differently. Declarative Pipeline is a more recent feature of Jenkins Pipeline which:
- provides richer syntactical features over Scripted Pipeline syntax, and 
- is designed to make writing and reading Pipeline code easier. 
Many of the individual syntactical components (or "steps") written into a Jenkinsfile

04) Create jenkins pipeline for your repo and use script file (jenkinsfile) to write pipeline syntax ? 
 
05) Create another multibranch pipeline and filter branches to contain only (master , dev , test ) ? 

