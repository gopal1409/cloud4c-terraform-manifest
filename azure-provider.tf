###provider 1
terraform {
  required_providers {
    azurerm = {
      #terraform init. it will download the exe file terraform api required to communicate with the cloud service provider
      source  = "hashicorp/azurerm"
      version = "1.44.0"
      #this is the latest version of terraform provider block
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

##provider 2
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false #this will ensure that vm is destroyed disk is not destroyed
    }
  }

  alias = "prod-westus" #this provider alias name is an meta argument from the resource section
  #client_id = "XXXXXD"
  #client_secret = "fff"
  ##environmet = "prod"
  #subscription_id = "asdasdad"
}
