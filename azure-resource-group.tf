resource "azurerm_resource_group" "rg" {
  name     = "rg"
  location = "East Us"
}


resource "azurerm_resource_group" "myrg2" {
  name     = "myrg-2"
  location = "West Us"
  provider = azurerm.prod-westus
}