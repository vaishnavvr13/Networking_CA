#!/bin/bash
# Update system packages
yum update -y

# Install Docker
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user

# Pull and run Nginx container
docker pull nginx:latest
docker run -d -p 80:80 --name web-app --restart always nginx:latest

# Log the container deployment for debugging
echo "Container deployment completed at $(date)" >> /var/log/container-deploy.log