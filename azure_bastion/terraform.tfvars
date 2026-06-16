bhost_name = {
  bhost1 = {
    name                = "bhost1"
    location            = "japaneast"
    resource_group_name = "dev-rg-frontend-japaneast"
    ip_configuration = {
      name                 = "ipconfig1"
      subnet_id            = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-rg-frontend-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-01-japaneast/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-rg-frontend-japaneast/providers/Microsoft.Network/publicIPAddresses/pip-nic1"
    }
  }

}