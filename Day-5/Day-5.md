Project 01 - 1 Hour
-----------------------

Deploying a Scalable Web Application with Persistent Storage and Advanced Automation
----------------------------------------------------------------------------------------

### Objective:

Deploy a scalable web application using Docker Swarm and Kubernetes,
ensuring data persistence using a single shared volume, and automate the
process using advanced shell scripting.

### Overview:

1.  Step 1: Set up Docker Swarm and create a service.

2.  Step 2: Set up Kubernetes using Minikube.

3.  Step 3: Deploy a web application using Docker Compose.

4.  Step 4: Use a single shared volume across multiple containers.

5.  Step 5: Automate the entire process using advanced shell
    > scripting.

### Step 1: Set up Docker Swarm and Create a Service

#### 1.1 Initialize Docker Swarm

![](.//media/image1.png)

#### 1.2 Create a Docker Swarm Service

![](.//media/image2.png)

### 

### 

### Step 2: Set up Kubernetes Using Minikube

#### 2.1 Start Minikube

![](.//media/image3.png)

#### 2.2 Deploy a Web App on Kubernetes

Create a deployment file named webapp-deployment.yml:

![](.//media/image4.png)

Apply the deployment:

#### ![](.//media/image5.png){width="6.268055555555556in" height="0.3125in"}2.3 Expose the Deployment

![](.//media/image6.png)

### 

### Step 3: Deploy a Web Application Using Docker Compose

#### 3.1 Create a docker-compose.yml File

![](.//media/image7.png)

#### 3.2 Deploy the Web Application 

![](.//media/image8.png)

### Step 4: Use a Single Shared Volume Across Multiple Containers

#### 4.1 Update docker-compose.yml to Use a Shared Volume

![](.//media/image9.png)

#### 4.2 Deploy with Docker Compose

![](.//media/image10.png)

### Step 5: Automate the Entire Process Using Advanced Shell Scripting

#### 5.1 Create a Shell Script deploy.sh

Here we change port numbers because of conflict in docker-compose.yaml
file.

![](.//media/image11.png)

#### 5.2 Make the Script Executable

![](.//media/image12.png)
#### 5.3 Run the Script

![](.//media/image13.png)

### 

### Project 02 - 1 Hour

### Comprehensive Deployment of a Multi-Tier Application with CI/CD Pipeline

### Objective:

Deploy a multi-tier application (frontend, backend, and database) using
Docker Swarm and Kubernetes, ensuring data persistence using a single
shared volume across multiple containers, and automating the entire
process using advanced shell scripting and CI/CD pipelines.

### Overview:

1.  Step 1: Set up Docker Swarm and create a multi-tier service.

2.  Step 2: Set up Kubernetes using Minikube.

3.  Step 3: Deploy a multi-tier application using Docker Compose.

4.  Step 4: Use a single shared volume across multiple containers.

5.  Step 5: Automate the deployment process using advanced shell
    > scripting.

### Step 1: Set up Docker Swarm and Create a Multi-Tier Service

#### 1.1 Initialize Docker Swarm

![](.//media/image1.png)

#### 1.2 Create a Multi-Tier Docker Swarm Service

Create a docker-compose-swarm.yml file:

![](.//media/image14.png)

Deploy the stack:

![](.//media/image15.png)

### Step 2: Set up Kubernetes Using Minikube

#### 2.1 Start Minikube

![](.//media/image3.png)

#### 2.2 Create Kubernetes Deployment Files

Create frontend-deployment.yaml:

![](.//media/image16.png)
Create backend-deployment.yaml:

![](.//media/image17.png)

Create db-deployment.yaml:

![](.//media/image18.png)

Create shared-pvc.yaml:

![](.//media/image19.png)

Create db-pvc.yaml:

![](.//media/image20.png)

Apply the deployments:

![](.//media/image21.png)
### Step 3: Deploy a Multi-Tier Application Using Docker Compose

#### 3.1 Create a docker-compose.yml File

![](.//media/image22.png)

#### 3.2 Deploy the Application

![](.//media/image23.png)

Here mybackend image is not available so it is throwing an error.

### 
