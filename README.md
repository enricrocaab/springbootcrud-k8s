
# CREATE AND DEPLOY A SPRING BOOT CRUD APP WITH DOCKER AND KUBERNETES ON AWS

This project provides a comprehensive overview of developing and deploying a **Spring Boot CRUD application**. I will guide you through the entire process, including:
1.	**Application Setup**: Creating a sample Spring Boot CRUD application.
2.	**Containerization & Orchestration Prep**: Developing the necessary configuration files, specifically the Dockerfile and Kubernetes deployment YAMLs.
3.	**Cloud Infrastructure**: Launching an EC2 instance on AWS and installing all required deployment software (Docker, conntrack, Git, Minikube, kubectl, and Maven).
4.	**Image Creation & Registry**: Building the Docker image for our application and pushing it to a container registry.
5.	**Deployment & Troubleshooting**: Applying the Kubernetes deployment files to Minikube, systematically identifying and resolving various integration and runtime issues along the way.
6.	**Validation**: Finally, verifying that the deployed solution is fully functional.

The architecture diagram can be summarized as follows:
  
<br><br>
<img width="886" height="613" alt="image" src="https://github.com/user-attachments/assets/4f64e20f-ac88-4611-ad44-dfaf0f4e0ecf" />

<br>

:smile>:  I **highly recommend** downloading and reading the **PDF document**, which explains in detail all the steps in the development of the project.
<br><br>
    
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
     
<ins>In AWS instance</ins>    
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

<br><br>

## Summary and Conclusions
This project was developed as a comprehensive tutorial, designed to allow users to practice the employed technologies and tools by following the detailed steps. All the necessary code is included within this documentation, allowing for easy copy-pasting, and is also available in the GitHub repository at https://github.com/enricrocaab/springbootcrud-k8s.
During development, we encountered and resolved various challenges, requiring careful error analysis to determine the root cause and apply appropriate solutions in each instance.
In Part I, we focused on local development, using Visual Studio Code for the Java application, Docker Desktop to run a local MySQL database container for development, and Maven to build the executable JAR file. We then created the necessary Dockerfile and Kubernetes YAML deployment files for both the database and the application (as detailed in Part II), which were subsequently pushed to a new GitHub repository.
The next phase (Part III) involved setting up an EC2 instance on AWS and installing essential tools: Docker, Minikube, kubectl, Git, and Maven.
In Part IV, with the instance prepared, we cloned the GitHub repository. To correctly simulate a Continuous Integration/Continuous Deployment (CI/CD) pipeline server, we rebuilt the application code directly on the instance using Maven to generate the executable JAR. This JAR was then used with the prepared Dockerfile to create the Docker image, which was uploaded to Docker Hub.
We then applied the Kubernetes YAML deployment files for the MySQL and application components to Minikube, a step that involved significant troubleshooting. 
For example, the MySQL pod initially entered a CrashLoopBackOff status because the root user was mistakenly treated as a standard user. Once that was corrected, further issues arose with the encoded password in the YAML file, which were also successfully resolved.
The application pods presented their own set of problems:
•	Encoded Password: The encoded password issue needed correction here as well.
•	Insufficient Disk Space: The App pods initially showed an ImagePullBackOff status due to a lack of free disk space on the instance. This required increasing the EBS volume storage resource on AWS and extending the instance partition.
•	Incorrect Java Version: Once the storage issue was fixed, the pods defaulted to a CrashLoopBackOff status caused by an incompatible Java version within the Docker image.
•	Connectivity Issues: Finally, after resolving connectivity issues, the web application was successfully deployed and functioned as intended.
In conclusion, completing all parts of this project served as an excellent practical exercise, providing hands-on experience with key DevOps technologies and tools.
Possible improvements could include migrating from Minikube to a multi-node Kubernetes cluster, implementing a formal CI/CD pipeline using tools like Jenkins, or adding DevSecOps functionalities. DevSecOps integration could involve tools such as Trivy for scanning dependencies and artifacts for known vulnerabilities, or SonarQube for identifying issues within the source code itself.
I hope this project proves valuable to many people. For me, it served as a rewarding exercise in practicing and reviewing numerous concepts and tools.

