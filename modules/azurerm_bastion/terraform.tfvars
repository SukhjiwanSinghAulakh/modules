bhost_name = {
  bhost1 = {
    name                = "bhost1"
    location            = "eastus"
    resource_group_name = "rg-terraform-morning"
    ip_configuration = {
      name           = "ipconfig1"
      subnet_id      = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/publicIPAddresses/pip-nic4"
    }
  }
  bhost2 = {
    name                = "bhost2"
    location            = "westus"
    resource_group_name = "rg-terraform-morning2"
    ip_configuration = {
      name           = "ipconfig2"
      subnet_id      = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning2/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning2/providers/Microsoft.Network/publicIPAddresses/pip-nic5"
    }
  }
  bhost3 = {
    name                = "bhost3"
    location            = "centralus"
    resource_group_name = "rg-terraform-morning3"
    ip_configuration = {
      name           = "ipconfig3"
      subnet_id      = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning3/providers/Microsoft.Network/virtualNetworks/vnet3/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning3/providers/Microsoft.Network/publicIPAddresses/pip-nic6"

    }
  }
}