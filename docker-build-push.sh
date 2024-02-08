#! /bin/bash

# Variables
ACR_NAME="avhacr"
IMAGE_NAME="openjdk17"
TAG="1.0"

echo "Login to $ACR_NAME CR"
# Authenticate to ACR
az acr login --name $ACR_NAME

echo "Building image $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG"
# Build the Docker Image
docker build -t $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG .

echo "Pushing image"
# Push the image to ACR
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG