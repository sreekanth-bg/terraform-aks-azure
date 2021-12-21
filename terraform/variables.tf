variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "temp"
}

variable "location" {
  default     = "West Europe"
  description = "The Azure Region in which all resources in this example should be provisioned"
}

variable "ssh_public_key" {
    default = "keys/id_rsa.pub"
}

# variable "client_app_id" {
#   description = "The Client app ID of the AKS client application"
# }

# variable "server_app_id" {
#   description = "The Server app ID of  the AKS server application"
# }

# variable "server_app_secret" {
#   description = "The secret created for AKS server application"
# }

# variable "tenant_id" {
#   description = "The Azure AD tenant id "
# }
