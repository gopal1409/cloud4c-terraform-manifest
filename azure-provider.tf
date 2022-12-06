terraform {
  required_providers {
    azurerm = {
      #terraform init. it will download the exe file terraform api required to communicate with the cloud service provider
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
      #this is the latest version of terraform provider block
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
