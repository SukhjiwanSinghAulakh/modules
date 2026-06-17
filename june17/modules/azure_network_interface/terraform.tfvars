nic = {
  nic1 = {
    name                = "nic1"
    location            = "japaneast"
    resource_group_name = "dev-rg-frontend-japaneast"
    ip_configuration = {
      name                          = "testconfiguration1"
      subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-rg-frontend-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-01-japaneast/subnets/subnet-01"
      private_ip_address_allocation = "Dynamic"
    }
  }
    nic2 = {
      name                = "nic2"
      location            = "japaneast"
      resource_group_name = "dev-rg-frontend-japaneast"
      ip_configuration = {
        name                          = "nic2configuration2"
        subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-rg-frontend-japaneast/providers/Microsoft.Network/virtualNetworks/dev-vnet-01-japaneast/subnets/subnet-01"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }



  