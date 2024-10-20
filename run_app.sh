#!/bin/bash

# # Step 1: Build the Go backend
# echo "Building Go backend..."
# docker build -t hazimemam/go-app:1.0 ./Clinic-Reservation-System

# # Step 2: Build the React frontend
# echo "Building React frontend..."
# docker build -t hazimemam/react-app:1.0 ./front_end_project


# # Step 3: Push Containers
# echo "Pushing the continer..."
# docker login
# docker push hazimemam/go-app:1.0
# docker push hazimemam/react-app:1.0

# Step 4: Start Compose
echo "Starting services with Docker Compose..."
docker-compose up -d

# Step 5: Check the status of containers
echo "Checking running containers..."
docker ps

minikube start

cd ./K8s

kubectl apply -f postgres-pvc.yaml

kubectl apply -f go-app-service.yaml
kubectl apply -f react-app-service.yaml
kubectl apply -f go-db-deployment.yaml
kubectl apply -f go-app-deployment.yaml
kubectl apply -f react-app-deployment.yaml

minikube service react-app-external --url
