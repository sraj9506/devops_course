#!/bin/bash

# Start Minikube
minikube start

# Create Kubernetes Deployment
kubectl apply -f webapp-deployment.yaml

# Expose the Deployment
kubectl expose deployment webapp --type=NodePort --port=80

# Initialize Docker Swarm
docker swarm init

# Create Docker Swarm Service
docker service create --name nginx-service --publish 8081:80 nginx

# Deploy Web App Using Docker Compose
docker-compose up -d

echo "Deployment completed successfully!"
