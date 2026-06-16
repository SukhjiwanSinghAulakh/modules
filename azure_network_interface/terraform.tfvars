nic = {
  nic1 = {
    name                = "nic1"
    location            = "eastus"
    resource_group_name = "dev-rg-frontend-eastus"
    ip_configuration = {
      name                          = "testconfiguration1"
      subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-rg-frontend-eastus/providers/Microsoft.Network/virtualNetworks/dev-vnet-01-eastus/subnets/subnet-01"
      private_ip_address_allocation = "Dynamic"
    }
  }
    nic2 = {
      name                = "nic2"
      location            = "eastus"
      resource_group_name = "dev-rg-frontend-eastus"
      ip_configuration = {
        name                          = "nic2configuration2"
        subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-rg-frontend-eastus/providers/Microsoft.Network/virtualNetworks/dev-vnet-01-eastus/subnets/subnet-01"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }



  