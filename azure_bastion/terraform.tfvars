bhost_name = {
  bhost1 = {
    name                = "bhost1"
    location            = "japaneast"
    resource_group_name = "rg-terraform-morning"
    ip_configuration = {
      name           = "ipconfig1"
      subnet_id      = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/publicIPAddresses/pip-nic4"
    }
  }
 
}