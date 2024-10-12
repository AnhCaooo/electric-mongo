# electric-mongo

A database for electric application 

## Prerequisite
- Make sure you have [Mongosh](https://www.mongodb.com/docs/mongodb-shell/install/) installed on your machine.
- Docker in your machine or environment is up and running

## Useful commands
### Access to MongoDB
In order to access to MongoDB, you can use the following command
```bash
docker exec -it <mongodb-docker-image> mongosh -u <username> -p <password>
```

### Navigate to specific database - collection
1. After access to MongoDB successfully, navigate to specific database
```bash
use <database-name>
```    

2. If you want to navigate to a specific collection inside database
```bash
use <collection-name>
```

### More options
If you are looking for more options, please see the [Run commands documentation](https://www.mongodb.com/docs/mongodb-shell/run-commands/)

## Build Docker image
**Note**: in case you are planning to push your docker image, you first need to log in Docker (only in case you have not logged in)

```bash
docker login -u "<docker_username>" -p "<docker_password>" docker.io
```

#### Step 1
Build image locally
```bash
# Option 1 (not recommended)
docker build --tag <image-name>:<number-version> .

# Option 2 (not recommended)
docker build -t <image-name>:<number-version> .

# Option 3 (recommended)
# this command by default will build image with tag version 'latest'. 
# this is an enhancement when before the image is built, all unit tests will be executed
make docker 
```

#### Step 2
Tag image
```bash
docker tag <image-name>:<number-version> anhcaoo/<image-name>:<tagged-version-number> 
```

#### Step 3
Push image to Docker hub
```bash
docker push anhcaoo/<image-name>:<tagged-version-number> 
```

## Run Docker image locally
```bash
docker run --name electric-mongo -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=<user> -e MONGO_INITDB_ROOT_PASSWORD=<pass> <repository_name>:<tag-version>
```

