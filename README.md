## This application was made as an assignment


### Task 1:

Implement an application in java which provides a REST API with endpoints for searching,
creating and deleting “server” objects:  
  ● GET servers. Should return all the servers if no parameters are passed. When server id  
    is passed as a parameter - return a single server or 404 if there’s no such a server.  
  ● PUT a server. The server object is passed as a json-encoded message body. Here’s an example:  
    {  
      “name”: ”my centos”,  
      “id”: “123”,  
      “language”:”java”,  
      “framework”:”django”  
    }  
  ● DELETE a server. The parameter is a server ID.  
  ● GET (find) servers by name. The parameter is a string. Must check if a server name  
    contains this string and return one or more servers found. Return 404 if nothing is found.  
    “Server” objects should be stored in MongoDB database.  
  
Be sure that you can show how your application responds to requests using postman, curl or  
any other HTTP client  

![add](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/fb0f9b64-d3cd-4cef-9e49-b7f70c6638a4)  
  
![get](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/1786aa96-0f62-4d5a-9d65-671c0d8fd3de)  
  
![getbyid](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/348f25a1-723c-4453-a06a-7ba92e90db84)  
  
![getbyidf](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/a21dc64c-d2cb-4037-9262-e2fff29066f3)  
  
![delete](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/2427a612-bb75-491b-8773-2b61e075dfdc)  
  
![getbyname](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/1e1495b3-2e6f-49ea-bf49-6c646ae10a47)  

### Task 2: Kubernetes.

  Use the application that you created in task #1 or task #2. Create dockerfiles and build docker  
  images. Create kubernetes yaml manifests for the application (at least a deployment and a  
  service). It’s ok to expose the application with a LoadBalancer or NodePort service or with an  
  ingress. Spin up a single-node local Kubernetes cluster (Docker Desktop, Kind or Minikube) or  
  use a managed cluster like EKS, AKS, GKE etc. Deploy MongoDB to the cluster (it’s ok to use a  
  community helm chart for this, any other approach is fine as well). Then deploy the application  
  to the cluster by applying your manifests. The following requirements should be fulfilled:  
    ● you can bring your application up by applying your yaml manifests  
    ● mongodb is running in a separate pod  
    ● the application should take mongo connection details from the environment variables  
    ● the app endpoints should be available from your host machine  
    ● a persistent volume should be used to store the MongoDB data. I.e., when you delete  
      the MongoDB pod the records in the db should not disappear.  


![Screenshot 2023-09-13 211631](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/e3537d85-2063-4caf-9811-9178bd2b93d2)  
  
![Screenshot 2023-09-13 211711](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/28674e59-a3c3-45d9-895f-0ebea4266c11)
  
![Screenshot 2023-09-13 212410](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/f69f5fd2-c9a3-4e98-9185-0eff3c1c5b90)
  
![Screenshot 2023-09-13 211729](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/7f5c137d-090e-4e97-b773-84fb0cba9e51)  

Now we pull mongo instance using --  
docker pull mongo  
this creates a image of the latest version of MongoDb into the docker container  
  
![Screenshot 2023-09-13 211906](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/9e102d46-3e52-4357-bb64-0509d1472627)  
  
![Screenshot 2023-09-13 211750](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/0ae375b5-16fc-4074-8d54-363e6cbe13d8)  
  
![Screenshot 2023-09-13 211948](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/1f742222-9807-4855-888a-799888b7b4e0)  
  
![Screenshot 2023-09-13 211822](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/0d8228c7-2066-4910-b6b3-4bdffd5ff51e)  
  
![Screenshot 2023-09-13 211832](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/8ca9466d-ecb9-4789-a8b2-425ccbb4722e)  
  
![Screenshot 2023-09-13 211935](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/ba0e5fb0-b732-4558-82c8-dfd9b1b4aee5)  
  
![Screenshot 2023-09-13 212034](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/b50ddb75-1cab-4d9f-adbc-7769b37ca59a)  
  
![Screenshot 2023-09-13 212050](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/823b1c45-faf2-4e5e-bdd4-b1a7eef6726c)  
  
![Screenshot 2023-09-13 212139](https://github.com/pal-akash/springboot-kaiburr-application/assets/108969268/98e666dc-97b1-4497-bb25-13d153810d47)  

### Task 5. CI-CD Pipeline
Create a CI-CD pipeline for a sample application (built in task 1 and/or 4 above) using any  
CI-CD tool of your choice like Jenkins, Azure DevOps, Gitlab, Github Actions, AWS  
CodePipeline or any other tool of your choice. Include a code build and a docker build step in  
your pipeline.  

Used tool GitHub Actions. The workflow can be seen in .github/workflows/maven.yml
