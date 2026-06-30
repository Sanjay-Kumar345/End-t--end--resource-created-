terraform {
  backend "azurerm" {
    resource_group_name = "alpha-rg"
    storage_account_name = "apnastrg789"
    container_name = "apna-container"
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