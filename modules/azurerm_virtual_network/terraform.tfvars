vnet_name = {
  vnet1 = {
    name                = "vnet1"
    location            = "eastus"
    resource_group_name = "rg-terraform-morning"
  address_space = ["10.0.0.0/16"]
   }

  vnet2 = {
    name                = "vnet2"
    location            = "westus"
    resource_group_name = "rg-terraform-morning2"
  address_space = ["10.1.0.0/16"] 
  }
  vnet3 = {
    name                = "vnet3"
    location            = "centralus"
    resource_group_name = "rg-terraform-morning3"
  address_space = ["10.2.0.0/16"] 
  }

}
