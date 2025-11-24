# Terraform Code & Step-by-Step Guide for AWS EC2 Deployment

>  [!NOTE]
 *This guide uses Terraform to provision an EC2 Instance and a Security Group with the necessary inbound rules.*

## Step 1: Set Up Your Project Directory
Create a directory for your Terraform project and a main file named main.tf.

    mkdir aws-jenkins-setup
    cd aws-jenkins-setup
    touch main.tf

## Step 2: Write the main.tf Terraform Code

Copy the following code into your `main.tf` file. You will need to replace the placeholders like `your-key-name`, and consider changing the `instance_type` and `ami` based on your region and requirements.
Terraform
    
      # Configure the AWS Provider
      terraform {
        required_providers {
          aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
          }
        }
      }

      provider "aws" {
        region = "us-east-1" # Change to your desired region
      }

    ## 1. Create a Security Group (SG)
    resource "aws_security_group" "devops_sg" {
      name        = "devops-instance-security-group"
      description = "Allows inbound traffic for Jenkins, Web, SSH, and Terraform"
      vpc_id      = var.vpc_id # Assumes a default or specified VPC
    
      # Ingress Rules (Inbound Traffic)
      ingress {
        description = "SSH access (for general use, Terraform setup, and instance management)"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        # **WARNING**: For production, restrict this to your IP or specific IPs only (e.g., 'cidr_blocks = ["<YOUR-IP>/32"]').
        cidr_blocks = ["0.0.0.0/0"] 
      }
    
      ingress {
        description = "Jenkins Web UI"
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        # Allow access from anywhere for demonstration, restrict as needed.
        cidr_blocks = ["0.0.0.0/0"] 
      }
    
      ingress {
        description = "HTTP Web Access (Standard web hosting port)"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    
      ingress {
        description = "HTTPS Web Access (Secure web hosting port)"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    
      # Egress Rule (Outbound Traffic) - Allows all outbound traffic
      egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # -1 means all protocols
        cidr_blocks = ["0.0.0.0/0"]
      }
    
      tags = {
        Name = "DevOps-SG"
      }
    }
    
    ## 2. Create the EC2 Instance
    resource "aws_instance" "devops_instance" {
      # Use an Amazon Linux 2 or Ubuntu AMI
      ami           = "ami-053b0d53c2792c300" # Example AMI for Amazon Linux 2 in us-east-1
      instance_type = "t2.medium"               # Use t2.micro for free tier, or a suitable type
      key_name      = "your-key-name"           # **MUST** be an existing key pair in AWS
      
      vpc_security_group_ids = [aws_security_group.devops_sg.id]
    
      # Optional: User data script to install Jenkins/Docker/etc. upon launch
      # user_data = file("install-scripts.sh") 
    
      tags = {
        Name    = "DevOps-EC2-Instance"
        Service = "Jenkins"
      }
    }
    
    ## 3. Define Variables (Create a variables.tf file)
    variable "vpc_id" {
      description = "The ID of the VPC to deploy into"
      type        = string
      # **Change this** to your desired VPC ID or remove default to prompt for input
      default     = "vpc-xxxxxxxxxxxxxxxxx" 
    }
    
    ## 4. Output the Instance IP (Create an outputs.tf file)
    output "public_ip" {
      description = "The public IP address of the EC2 instance"
      value       = aws_instance.devops_instance.public_ip
    }

## Step 3: Explanation of Essential Ports

The following ports are configured in the `aws_security_group` resource and are essential for your setup:

    Port               Protocol                     Service/Purpose                        Description
   
    22                 TCP                          SSH, Terraform                         Required to securely log into the instance for setup, management,
                                                                                           and for your local machine to potentially run remote commands 
                                                                                           (like part of a local Terraform provisioner).
                                                                                           
    8080               TCP                          Jenkins                                This is the default port for the Jenkins web interface.
    
    80                 TCP                          Webhosting                             HTTP - Standard port for unencrypted web traffic. Necessary to                                                                                                     deploy a website to the world.
    
    443                TCP                          Webhosting                             HTTPS - Standard port for encrypted web traffic (using SSL/TLS). Highly                                                                                            recommended for deploying a website to the world.

> [!IMPORTANT]
>  ## GitHub Ports:
> GitHub itself primarily uses HTTPS (443) or SSH (22) for cloning/pushing repositories. Since you are allowing all outbound traffic (Egress rule), your EC2 instance will be able to communicate with GitHub without specific inbound (Ingress) rules, provided you have configured SSH keys or a Personal Access Token correctly.

## Step-by-Step Deployment Process
Follow these steps to deploy your infrastructure and prepare your instance.

### Step A: Initialize Terraform
In your project directory, run the initialization command.

> Bash

    terraform init

### Step B: Review the Plan
Check what Terraform will create before applying the changes.

> Bash

    terraform plan

### Step C: Apply the Configuration
Execute the deployment. Type `yes` when prompted.

> Bash

    terraform apply

The output will show the Public IP address of your new EC2 instance.

### Step D: SSH into the Instance
Use the Public IP (from the output) and your key file to connect.

> Bash

    # Example for an Amazon Linux Instance:
    ssh -i /path/to/your/key.pem ec2-user@<Your-Public-IP>

### Step E: Install Jenkins/Web Server
Once logged in, you need to install and start your services (Jenkins, Web Server like Nginx or Apache).

**Example: Installing Jenkins (on a suitable OS, like Amazon Linux 2):**

> Bash

    # Update the system
    sudo yum update -y
    # Install Java (Jenkins requires Java)
    sudo amazon-linux-extras install java-openjdk11 -y
    # Add the Jenkins repository and key
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    # Install Jenkins
    sudo yum install jenkins -y
    # Start the Jenkins service
    sudo systemctl enable jenkins
    sudo systemctl start jenkins

### Step F: Access Jenkins and Your Website
1.Jenkins: Open your web browser and navigate to: `http://<Your-Public-IP>:8080`

2.Web Hosting: If you install a web server (like Nginx on port 80), you can access it via: `http://<Your-Public-IP>`

This completes the infrastructure creation and initial setup guide.
