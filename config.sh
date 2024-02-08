#! /bin/bash

# Variables
# Use the rules for create rg and acr names
RESOURSE_GROUP_NAME="v-rg"
# Check if the name is available
ACR_NAME="avhacr"
LOCATION="eastus"

echo "Creating Resource Group $RESOURCE_GROUP_NAME"
# Create a resource group
az group create --name $RESOURSE_GROUP_NAME --location $LOCATION

echo "Creating Azure Container Registry $ACR_NAME"
# Create an Azure Container Registry
az acr create --resource-group $RESOURSE_GROUP_NAME --name $ACR_NAME --sku Basic --admin-enabled true --location $LOCATION