# Define input variables
    #1. Azure location
    #2. Azure resource group name
    #3. Azure AKS enviornment name (Dev, QA, Prod

#Azure location
variable "location" {
    type = string
    description = "Azure region where all these resources will be provisioned"
    default = "centralus"
     
}
#Azure resource group name

variable "resource_group_name" {
    type = string
    description = "This variable defines the resource group"
    default = "terraform-aks"
  
}

#Azure enviornement name
variable "enviornment" {
    type = string
    description = "This variable defines the enviornment"
    #default = "Dev"
}

#Aks input variables
# ssh public key for linix vms
variable "ssh_public_key" {
   # default = "D:/Learning/Azure-AKS-HandsOn/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
   
} 
# WIndows Admin username fork8s worker node
variable "windows_admin_username" {
    type = string
    default = "azureuser"
    description = "This variable defines the windows admin username fork8s worker node"
  
}
#windows admin password for k8s worker node
variable "windows_admin_password" {
    type = string
    default = "P2ssw0rd@123456"
    description = "This variable defines the windows admin password for k8s worker node"
  
}

