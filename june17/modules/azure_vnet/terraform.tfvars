prefix = "dev"
vnet = {
  vnet1 = {
    name                   = "vnet-01"
    location               = "japaneast"
    azurerm_resource_group = "dev-rg-frontend-japaneast"
    address_space = ["10.0.0.0/16"]
  }
}