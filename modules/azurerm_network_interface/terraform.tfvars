  nic = {
    nic1 = {
      name                = "nic1"
      location            = "eastus"
      resource_group_name = "rg-terraform-morning"
      ip_configuration = {
        name                          = "testconfiguration1"
        subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/frontend-vnet1"
        private_ip_address_allocation = "Dynamic"
        public_ip_name = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/publicIPAddresses/pip-nic1"
      }
      
  }
  nic2 = {
    name                = "nic2"
    location            = "westus"
    resource_group_name = "rg-terraform-morning2"
    ip_configuration = {
      name                          = "nic2configuration1"
      subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning2/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/frontend-vnet2"
      private_ip_address_allocation = "Dynamic"
      public_ip_name = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning2/providers/Microsoft.Network/publicIPAddresses/pip-nic2"
    }
  }
  nic3 = {
    name                = "nic3"
    location            = "centralus"
    resource_group_name = "rg-terraform-morning3"
    ip_configuration = {
      name                          = "nic3configuration1"
      subnet_id                     = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning3/providers/Microsoft.Network/virtualNetworks/vnet3/subnets/frontend-vnet3"
      private_ip_address_allocation = "Dynamic"
      public_ip_name = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning3/providers/Microsoft.Network/publicIPAddresses/pip-nic3"
    }
  }
}


  