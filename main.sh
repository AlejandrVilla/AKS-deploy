#! /bin/bash

# you can do thi manual
# install, update and verify some dependencies
#./pre-init.sh

# Create resource group
# Create Azure Container Registry
echo "config resource group and creating ACR"
./config.sh

echo "cleaning and building project"
# Clean and build the project
./pre-build.sh

# Login in ACR
# Crate docker image
# Push image to ACR
echo "build a push docker image"
./docker-build-push.sh

# you can do thi manual
# Delete RG and ACR
#./destroy.sh
