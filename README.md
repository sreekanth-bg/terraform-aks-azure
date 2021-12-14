# Use Terraform to Create and Manage an HA AKS Kubernetes Cluster in Azure

![](https://cdn.codersociety.com/uploads/use-terraform-to-create-and-manage-a-ha-aks-kubernetes-cluster-in-azure.png)

We discuss this repository in this article in detail:
https://codersociety.com/blog/articles/terraform-azure-kubernetes

The repository contains Terraform code which creates an highly available AKS Kubernetes cluster in Azure. It also includes some sample Kubernetes manifest files for network policies and a sample application

* set env vars (just these required for SP)
export TF_VAR_client_id="xxxxxxxxxxxxx"
export TF_VAR_client_secret="xxxxxxxxxxx"

* set az cli env vars (required is using user login instead of sevice principal)
export ARM_CLIENT_ID="xxxxxxxxxxxx"
export ARM_CLIENT_SECRET="xxxxxxxxxxxxxxxxx"
export ARM_SUBSCRIPTION_ID="xxxxxxxxxxxx"
export ARM_TENANT_ID="xxxxxxxxxxxxxxxx"
