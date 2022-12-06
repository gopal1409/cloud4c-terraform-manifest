resource "random_string" "myrandom" {
  length = 16 
  upper = false 
  special = false 
}
resource "azurerm_storage_account" "example" {
  name                     = "st${random_string.myrandom.id}"
  #name of the storage with random
  resource_group_name      = azurerm_resource_group.rg.name
  ###you need to provide in which rg the storage accoun will be created
  location                 = azurerm_resource_group.rg.location
  ##location where the storage account will be created
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}