nsg = {
  nsg1 = {
    name                = "nsg1"
    location            = "eastus"
    resource_group_name = "dev-rg-frontend-eastus"

    security_rule = {
      rule1 = {
        name                       = "rdp"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "10.0.2.0/24"
        destination_address_prefix = "*"
      }

      rule2 = {
        name                       = "ssh"
        priority                   = 101
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "10.0.2.0/24"
        destination_address_prefix = "*"
      }
    }
  }
}