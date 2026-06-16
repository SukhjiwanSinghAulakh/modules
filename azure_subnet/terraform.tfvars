subnet = {
  subnet1 = {
    name                 = "subnet-01"
    virtual_network_name = "dev-vnet-01-eastus"
    resource_group_name  = "dev-rg-frontend-eastus"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "dev-vnet-01-eastus"
    resource_group_name  = "dev-rg-frontend-eastus"
    address_prefixes    = ["10.0.2.0/24"]
  }
}