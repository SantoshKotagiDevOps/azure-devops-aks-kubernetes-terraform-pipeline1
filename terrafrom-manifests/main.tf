# We will define
#1. Terraform setting block
#2. Required version Terrafrom
#3. Required Terraform Providers
#4. Terraform remote state storage with azure storage account
#5. terrafrom provider block for azurerm
#6. Terraform resource block: define a random pet resource (The name should be unique across Azure log analytics workspace)

# Terraform settings block
terraform {
  # 1. Required Version Terraform
  required_version = ">= 0.13"
  # 2. Required Terraform Providers  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    #resource_group_name   = "terraform-storage-rg"
    #storage_account_name  = "tfstatefilesantosh"
    #container_name        = "tfstatefiles"
    #key                   = "dev.terraform.tfstate"
  }  
} 



# 2. Terraform Provider Block for AzureRM
provider "azurerm" {
  features {

  }
}

# 3. Terraform Resource Block: Define a Random Pet Resource
resource "random_pet" "aksrandom" {

}