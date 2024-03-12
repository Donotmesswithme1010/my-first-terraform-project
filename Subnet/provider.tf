terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Devops_rg1"
    storage_account_name = "devwg1655"
    container_name       = "container1"
    key                  = "subnet.terraform.tfstate"
  }
}


provider "azurerm" {
  features {

  }
}