terraform {
  backend "azurerm" {
    resource_group_name = "test-rg"
    storage_account_name = "alphastrg456"
    container_name = "alphacontainer"
    key = "pipeline.tfstate"
    
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.79.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}