#! /bin/bash

# Variables
RESOURSE_GROUP_NAME="v-rg"

# Delete the resource group and all resources in it
az group delete --name $RESOURSE_GROUP_NAME --yes --no-wait

