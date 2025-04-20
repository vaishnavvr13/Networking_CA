# Azure Docker Web Application

## Project Overview

This project demonstrates a complete CI/CD pipeline for deploying a containerized web application to Azure using:

- Terraform for infrastructure provisioning
- Docker for containerization
- GitHub Actions for continuous integration and deployment

## Key Components

- Cloud Platform: Microsoft Azure
- Infrastructure as Code: Terraform
- Containerization: Docker
- CI/CD: GitHub Actions
- Web Server: Nginx

## Project Structure

-     erraform/: Terraform configuration files for Azure infrastructure
- webapp/: Web application source files
  - index.html: Simple web page
  - Dockerfile: Docker configuration for the web app
- .github/workflows/: GitHub Actions workflow for automated deployment

## Deployment Process

1. Terraform creates an Azure VM with necessary network configurations
2. Docker containerizes the web application
3. GitHub Actions automatically builds and deploys the container to the VM

## Prerequisites

- Azure account
- GitHub account
- Terraform
- Docker
- GitHub Actions

## How to Reproduce

1. Clone the repository
2. Set up Azure credentials
3. Configure GitHub Secrets
4. Push changes to trigger automatic deployment
