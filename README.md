# Deploying and managing containerized applications in a Kubernetes cluster on Azure Kubernetes Service (AKS), using GitHub for version control.
- Before you begin make sure you have a Cluster running in AKS
- Set your Azure credentials in Github secrets in a json format as AZURE_CREDENTIALS name
    ```json
    {
        "clientSecret":  "***",
        "subscriptionId":  "***",
        "tenantId":  "***",
        "clientId":  "***"
    }
    ```
- The pipeline will create a deployment and a service on your cluster