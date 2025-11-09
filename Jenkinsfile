pipeline {
    agent any
    
    // CRITICAL FIX: Adds the Docker executable to the shell's path
    environment {
        PATH = "/usr/bin:/usr/local/bin:/usr/bin/docker:$PATH" 
    }
    
    stages {
        stage('1. Checkout Code') {
            steps {
                echo 'Code successfully checked out from GitHub.'
            }
        }
        
        stage('2. Build Docker Image') {
            steps {
                echo 'Building the Docker image: yoga-website:latest'
                sh 'docker build -t yoga-website:latest .' 
            }
        }
        
        stage('3. Deploy Website') {
            steps {
                echo 'Stopping and removing old container...'
                sh 'docker stop yoga-site || true' 
                sh 'docker rm yoga-site || true' 
                
                echo 'Starting the new container!'
                // Maps the container's port 80 to the host's port 8080 (which you opened in the Security Group)
                sh 'docker run -d -p 8080:80 --name yoga-site yoga-website:latest'
            }
        }
    }
}
