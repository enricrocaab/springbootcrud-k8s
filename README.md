
# CREATE AND DEPLOY A SPRING BOOT CRUD APP WITH DOCKER AND KUBERNETES ON AWS

This project provides a comprehensive overview of developing and deploying a **Spring Boot CRUD application**. I will guide you through the entire process, including:
1.	**Application Setup**: Creating a sample Spring Boot CRUD application.
2.	**Containerization & Orchestration Prep**: Developing the necessary configuration files, specifically the Dockerfile and Kubernetes deployment YAMLs.
3.	**Cloud Infrastructure**: Launching an EC2 instance on AWS and installing all required deployment software (Docker, conntrack, Git, Minikube, kubectl, and Maven).
4.	**Image Creation & Registry**: Building the Docker image for our application and pushing it to a container registry.
5.	**Deployment & Troubleshooting**: Applying the Kubernetes deployment files to Minikube, systematically identifying and resolving various integration and runtime issues along the way.
6.	**Validation**: Finally, verifying that the deployed solution is fully functional.

The architecture diagram can be summarized as follows:

<img width="886" height="613" alt="image" src="https://github.com/user-attachments/assets/4f64e20f-ac88-4611-ad44-dfaf0f4e0ecf" />

<ins>In laptop</ins>  
Part I: 	Create a Spring Boot Application  
     I.1- Run and test the MySQL connection  
     I.2- Create the DB and check it  
     I.3- Create the Visual Studio project  
     I.4- Change the DB connection settings in the App  
     I.5- Create and modify project files  
     I.6- Check that the application works  
     I.7- Create the executable JAR file  
Part II:  Create the configuration files to deploy the App  
     II.1- Create the Dockerfile  
     II.2- Create the db deployment yaml file  
     II.3- Create the app deployment yaml file  
     II.4- Upload the files to GitHub  

In AWS instance  
Part III: 	Launch an instance on AWS and install the software  
     III.1- Launch the Linux instance on AWS  
     III.2- Install Docker, Minikube, kubectl, Git and Maven  
Part IV: Download the files and deploy the solution  
     IV.1- Download the files from GitHub to the instance  
     IV.2- Re-built the executable jar file in the pipeline server  
     IV.3- Create the Docker image and upload it to Docker Hub  
     IV.4-	Apply the db-deploy.yaml file  
     IV.5-	Apply the app-deploy.yaml file  
     IV.6-	Configure connectivity  
Part V:  Check that the solution works  
      V.1-	Test the App and values in DB   
      V.2-	Check Minikube Dashboard  
      V.3- Summary and Conclusions  




