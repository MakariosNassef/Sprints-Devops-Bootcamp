1- Create ConfgMap or MongoDB EndPoint. ( The MondoDB sevice name)
DB_URL:mongo-service
name of clusterIP service attached to db-deployment
2- Create A secret or MongoDB User & PWD
USER_NAME: mongouser
USER_PWD: mongopassword
3- Create MongoDB Deployment Applicaton with Internal service (ClusterIp) Mongo DB needs
username + password to operate
Vars needed in mongoDB:
MONGO_INITDB_ROOT_USERNAME: root
MONGO_INITDB_ROOT_PASSWORD: example
4- Create webApp Deployment(FrontEnd( with external service) and it needs to access MongoDb,
so it needs username+ password + mongodb endpoint (mongodb service) container runs on
3000
