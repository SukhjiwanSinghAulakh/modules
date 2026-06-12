subnet_name = {
  subnet1 = {
    name                 = "frontend-vnet1"
    resource_group_name  = "rg-terraform-morning"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-vnet1"
    resource_group_name  = "rg-terraform-morning"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "database-vnet1"
    resource_group_name  = "rg-terraform-morning"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.3.0/24"]
  }
  subnet4 = {
    name                 = "frontend-vnet2"
    resource_group_name  = "rg-terraform-morning2"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.1.0/24"]
  }
  subnet5 = {
    name                 = "backend-vnet2"
    resource_group_name  = "rg-terraform-morning2"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.2.0/24"]
  }
  subnet6 = {
    name                 = "database-vnet2"
    resource_group_name  = "rg-terraform-morning2"
    location             = "eastus"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.3.0/24"]
  }
  subnet7 = {
    name                 = "frontend-vnet3"
    resource_group_name  = "rg-terraform-morning3"
    virtual_network_name = "vnet3"
    address_prefixes     = ["10.2.1.0/24"]
  }
  subnet8 = {
    name                 = "backend-vnet3"
    resource_group_name  = "rg-terraform-morning3"
    location             = "eastus"
    virtual_network_name = "vnet3"
    address_prefixes     = ["10.2.2.0/24"]
  }
  subnet9 = {
    name                 = "database-vnet3"
    resource_group_name  = "rg-terraform-morning3"
    virtual_network_name = "vnet3"
    address_prefixes     = ["10.2.3.0/24"]
  }
  subnet10 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-terraform-morning"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.4.0/24"]

  }
  subnet11 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-terraform-morning2"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.4.0/24"]
  }
  subnet12 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-terraform-morning3"
    virtual_network_name = "vnet3"
    address_prefixes     = ["10.2.4.0/24"]
  }
}