prefix = "dev"
vnet = {
  vnet1 = {
    name                   = "vnet-01"
    location               = "eastus"
    azurerm_resource_group = "dev-rg-frontend-eastus"
    address_space = ["10.0.0.0/16"]
  }
}