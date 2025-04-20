# AWS Docker Web Application

## Project Overview

This project demonstrates a basic CI/CD pipeline for deploying a containerized web application to AWS using:

- Terraform for infrastructure provisioning
- Docker for containerization
- GitHub Actions for continuous integration and deployment

## Key Components

- Cloud Platform: Amazon Web Services (AWS)
- Infrastructure as Code: Terraform
- Containerization: Docker
- CI/CD: GitHub Actions
- Web Server: Nginx

## Infrastructure Components

- VPC with a public subnet
- Internet Gateway for public access
- EC2 instance in public subnet
- Security group allowing HTTP and SSH access

## Project Structure

- terraform/: Terraform configuration files for AWS infrastructure
- webapp/: Web application source files
- Dockerfile: Docker configuration for the web app
- .github/workflows/: GitHub Actions workflow for automated deployment

## Prerequisites

1. AWS Account
2. GitHub Account
3. Terraform installed locally
4. AWS CLI configured with credentials

## Deployment Steps

1. Clone the repository
2. Configure AWS credentials:
   ```bash
   aws configure
   ```
3. Initialize and apply Terraform:
   ```bash
   cd terraform
   terraform init
   terraform apply
   ```
4. Add GitHub Secrets:
   - EC2_HOST: Public IP of the EC2 instance
   - SSH_PRIVATE_KEY: SSH private key for EC2 access

5. Push changes to trigger automatic deployment

## Security Notes

- The EC2 instance is placed in a public subnet for simplicity
- Security group allows inbound HTTP (80) and SSH (22) access
- Basic setup suitable for development and learning purposes
