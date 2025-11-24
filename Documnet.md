# Devops-Yoga-Project
## DevOps CI/CD Project Documentation: Yoga Website Deployment

> [!IMPORTANT]
Project Goal: Deploy a static HTML website (Yoga Website) to an AWS EC2 instance using a Jenkins Continuous Integration/Continuous Deployment (CI/CD) Pipeline, Docker, and GitHub.

> [!NOTE]
Repalce your Server IP Add:

Deployed URL (Currently I used):

	http://65.2.153.193:8081

### 1. Architecture Overview

The solution architecture consists of five main components:
Source Code: Stored in the GitHub repository SELVAM2001/Devops-Yoga-Project on the main branch.
CI/CD Orchestration: Handled by Jenkins, which is running on the AWS EC2 instance on Port 8080.
Containerization: Docker is used to build the web server image, tagged as yoga-website:latest.
Deployment: The application runs inside a Docker Container on the EC2 host. The host port is mapped to external port 8081.
Website File: The custom HTML is named index.html, which is the required default file name for Nginx.

### 2. GitHub Repository Artifacts

These three files were committed to the root of the main branch to enable the pipeline:
A. Jenkinsfile (Pipeline Definition with Critical Fix)
This script defines the three stages of the pipeline and includes a critical fix (PATH variable) to resolve the docker: command not found error, and a port fix to avoid conflict with Jenkins.

	pipeline {
    agent any
    
    // CRITICAL FIX: Ensures Jenkins can find the 'docker' executable
    environment {
        PATH = "/usr/bin:/usr/local/bin:/usr/bin/docker:$PATH" 
    }
    
    stages {
        stage('1. Checkout Code') {
            steps {
                echo 'Code successfully checked out from GitHub.'
                // Jenkins performs 'git checkout' automatically based on job configuration
            }
        }
        
        stage('2. Build Docker Image') {
            steps {
                echo 'Building the Docker image: yoga-website:latest'
                // Builds the image using the Dockerfile in the workspace
                sh 'docker build -t yoga-website:latest .' 
            }
        }
        
        stage('3. Deploy Website') {
            steps {
                echo 'Stopping and removing old container...'
                // Stops and removes the container if it exists (the '|| true' prevents failure if container doesn't exist)
                sh 'docker stop yoga-site || true' 
                sh 'docker rm yoga-site || true' 
                
                echo 'Starting the new container!'
                // Runs container: -d (detached), -p (port map 8081 on host to 80 in container), --name (easy reference)
                sh 'docker run -d -p 8081:80 --name yoga-site yoga-website:latest'
            }
        }
    }

    
    

**B. Dockerfile (Container Blueprint)**

This file instructs Docker to use a lightweight Nginx image and copy all contents from the GitHub repository into the Nginx serving directory.

	FROM nginx:alpine
	# Copies all files from the repo root into the Nginx web directory
	COPY . /usr/share/nginx/html
C. index.html (Website Content)
The custom HTML/CSS/JS file that contains the Yoga website. (Must be named index.html for Nginx to serve it by default).

### 3. Key Troubleshooting Steps & Resolutions

Our deployment required several critical fixes to achieve a successful build:

Problem Resolutions
>Problem: Permissions/Root Access
>
>Symptom: Got permission denied while trying to connect to the Docker daemon socket
?
>Resolution: Restarted Jenkins with the --user=root or configured the service user to be in the docker group.
>
>Problem: Docker Command Not Found
>
>Symptom: docker: command not found (Exit Code 127)
>Resolution: Added the PATH environment variable to the Jenkinsfile to explicitly include the Docker binary directory: PATH = "/usr/bin:/usr/local/bin:/usr/bin/docker:$PATH".
>
>Problem: Wrong Git Branch
>
>Symptom: fatal: couldn't find remote ref refs/heads/master
>
>Resolution: Updated the Jenkins job configuration's Branch Specifier from */master to main.
>
>Problem: Port Conflict
>
>Symptom: Bind for 0.0.0.0:8080 failed: port is already allocated
>
>Resolution: Changed the host port mapping in the Jenkinsfile from 8080:80 to 8081:80 and opened port 8081 in the AWS Security Group.
>
>Problem: Broken Dockerfile Content
>
>Symptom: dockerfile parse error on line 2: unknown instruction: <title>YOGA
>
>Resolution: Corrected the content of the Dockerfile to contain only the two required Docker instructions (FROM and COPY).

### 4. Next Steps (Custom Domain Name)

To replace the IP address and port (http://65.2.153.193:8081) with a simple domain name (http://yourwebsitename.com), the following steps are required:
DNS Mapping: Use Amazon Route 53 (or your registrar) to create an A Record pointing your domain to the EC2 instance IP (65.2.153.193).

Reverse Proxy Setup: Install a lightweight web server (like Nginx) directly on the EC2 host, listening on the standard HTTP port 80. This proxy will redirect traffic from port 80 to your Docker container running on port 8081.
