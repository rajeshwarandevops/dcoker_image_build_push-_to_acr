#/bin/bash

ACR_RESOURCE_GROUP_NAME="rg-kbbrajesh-azdevops-acrimage"
ACR_NAME="acrkbbazdevops2731"

# Create a resource group to store container registry
az group create --name $ACR_RESOURCE_GROUP_NAME --location uksouth

# Create a container registry that will be where you deploy your image to
az acr create --resource-group $ACR_RESOURCE_GROUP_NAME --name $ACR_NAME --sku Basic