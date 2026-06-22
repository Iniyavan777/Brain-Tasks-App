# Brain Tasks App - DevOps Deployment Project

## Project Overview
Complete CI/CD pipeline deployment using Docker, Kubernetes (AWS EKS), and AWS CodePipeline.

## Architecture
## Setup Instructions

### Prerequisites
- AWS Account
- GitHub Account  
- Docker
- kubectl, eksctl, aws-cli

### Local Testing
```bash
git clone https://github.com/Iniyavan777/Brain-Tasks-App.git
cd Brain-Tasks-App

# Docker build and test
docker build -t brain-tasks-app:1.0 .
docker run -d -p 3000:3000 brain-tasks-app:1.0
```

### EKS Cluster
```bash
eksctl create cluster \
  --name brain-tasks-cluster \
  --region us-east-1 \
  --node-type t3.micro \
  --nodes 2

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

## CI/CD Pipeline

### CodeBuild
- Builds Docker image from Dockerfile
- Pushes to ECR
- Triggered on GitHub push

### CodePipeline  
- **Source:** GitHub
- **Build:** CodeBuild
- **Deploy:** EKS

## Application Access

**LoadBalancer URL:** http://a1b7ca885026c446ea96299e1e9bf68b-1935259213.us-east-1.elb.amazonaws.com

**LoadBalancer ARN:** arn:aws:elasticloadbalancing:us-east-1:027654771473:loadbalancer/net/k8s-braintasks-xxxxxxxx/xxxxxxxxxxxxxxxx

## Files
- `Dockerfile` - Container image definition
- `nginx.conf` - Nginx web server config
- `buildspec.yml` - CodeBuild configuration
- `k8s/deployment.yaml` - Kubernetes deployment
- `k8s/service.yaml` - LoadBalancer service

## Submission
- GitHub: https://github.com/Iniyavan777/Brain-Tasks-App
- EKS Cluster: brain-tasks-cluster (us-east-1)
- Pipeline: brain-tasks-pipeline (CodePipeline)

---
**Date:** June 22, 2026
**Author:** Iniya
