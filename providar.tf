terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.97.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "holipro"
    storage_account_name = "holiprost1"
    container_name       = "holicntpro"
    key                  = "proterraform.tfstate"
  }
}


provider "azurerm" {
features {}
}