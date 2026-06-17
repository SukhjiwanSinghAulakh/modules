rgn = {
  rg1 = {
    name       = "rg-dev-eastus"
    location   = "eastus"
    managed_by = "terraform"
  }
  rg2 = {
    name       = "rg-dev-westus"
    location   = "westus"
    managed_by = "terraform"
  }
  rg3 = {
    name       = "rg-dev-centralus"
    location   = "centralus"
    managed_by = "terraform"
  }
}
vnet_name = {
  vnet1 = {
    name                = "vnet-dev-eastus"
    location            = "eastus"
    resource_group_name = "rg-dev-eastus"
  address_space = ["10.0.0.0/16"]
   }

  vnet2 = {
    name                = "vnet-dev-westus"
    location            = "westus"
    resource_group_name = "rg-dev-westus"
  address_space = ["10.1.0.0/16"] 
  }
  vnet3 = {
    name                = "vnet-dev-centralus"
    location            = "centralus"
    resource_group_name = "rg-dev-centralus"
  address_space = ["10.2.0.0/16"] 
  }
}
subnet_name = {
  subnet1 = {
    name                 = "frontend-subnet-dev-eastus"
    resource_group_name  = "rg-dev-eastus"
    virtual_network_name = "vnet-dev-eastus"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet-dev-eastus"
    resource_group_name  = "rg-dev-eastus"
    virtual_network_name = "vnet-dev-eastus"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "database-subnet-dev-eastus"
    resource_group_name  = "rg-dev-eastus"
    virtual_network_name = "vnet-dev-eastus"
    address_prefixes     = ["10.0.3.0/24"]
  }
  subnet4 = {
    name                 = "frontend-subnet-dev-westus"
    resource_group_name  = "rg-dev-westus"
    virtual_network_name = "vnet-dev-westus"
    address_prefixes     = ["10.1.1.0/24"]
  }
  subnet5 = {
    name                 = "backend-subnet-dev-westus"
    resource_group_name  = "rg-dev-westus"
    virtual_network_name = "vnet-dev-westus"
    address_prefixes     = ["10.1.2.0/24"]
  }
  subnet6 = {
    name                 = "database-subnet-dev-westus"
    resource_group_name  = "rg-dev-westus"
    virtual_network_name = "vnet-dev-westus"
    address_prefixes     = ["10.1.3.0/24"]
  }
  subnet7 = {
    name                 = "frontend-subnet-dev-centralus"
    resource_group_name  = "rg-dev-centralus"
    virtual_network_name = "vnet-dev-centralus"
    address_prefixes     = ["10.2.1.0/24"]
  }
  subnet8 = {
    name                 = "backend-subnet-dev-centralus"
    resource_group_name  = "rg-dev-centralus"
    location             = "centralus"
    virtual_network_name = "vnet-dev-centralus"
    address_prefixes     = ["10.2.2.0/24"]
  }
  subnet9 = {
    name                 = "database-subnet-dev-centralus"
    resource_group_name  = "rg-dev-centralus"
    virtual_network_name = "vnet-dev-centralus"
    address_prefixes     = ["10.2.3.0/24"]
  }
  subnet10 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-dev-eastus"
    virtual_network_name = "vnet-dev-eastus"
    address_prefixes     = ["10.0.4.0/24"]

  }
  subnet11 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-dev-westus"
    virtual_network_name = "vnet-dev-westus"
    address_prefixes     = ["10.1.4.0/24"]
  }
  subnet12 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-dev-centralus"
    virtual_network_name = "vnet-dev-centralus"
    address_prefixes     = ["10.2.4.0/24"]
  }
}
nsg = {
      nsg1 = {
        name                = "frontend-nsg-dev-eastus"
        location            = "eastus"
        resource_group_name = "rg-dev-eastus"
        virtual_network_name="vnet-dev-eastus"
        subnet_name="frontend-subnet-dev-eastus"
          security_rule ={
              rule1 = { 
                name                       = "http"
                priority                   = 100
                direction                  = "Inbound"
                access                     = "Allow"
                protocol                   = "Tcp"
                source_port_range          = "*"
                destination_port_range     = "80"
                source_address_prefix      = "*"
                destination_address_prefix = "*"
              }
              rule2 = {
                name                       = "https"
                priority                   = 200
                direction                  = "Inbound"
                access                     = "Allow"
                protocol                   = "Tcp"
                source_port_range          = "*"
                destination_port_range     = "443"
                source_address_prefix      = "*"
                destination_address_prefix = "*"
              }
              rule3 = {
                name                       = "ssh"
                priority                   = 300
                direction                  = "Inbound"
                access                     = "Allow"
                protocol                   = "Tcp"
                source_port_range          = "*"
                destination_port_range     = "22"
                source_address_prefix      = "*"
                destination_address_prefix = "*"
              }
              rule4 = {
                name                       = "RDP"
                priority                   = 400
                direction                  = "Inbound"
                access                     = "Allow"
                protocol                   = "Tcp"
                source_port_range          = "*"
                destination_port_range     = "3389"
                source_address_prefix      = "*"
                destination_address_prefix = "*"
              }
         }
      }
      nsg2 = {
        name                = "backend-nsg-dev-eastus"
        location            = "eastus"
        resource_group_name = "rg-dev-eastus"
        virtual_network_name="vnet-dev-eastus"
        subnet_name="frontend-subnet-dev-eastus"
            security_rule ={
                    rule1 = { 
                      name                       = "http"
                      priority                   = 100
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "80"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule2 = {
                      name                       = "https"
                      priority                   = 200
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "443"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule3 = {
                      name                       = "ssh"
                      priority                   = 300
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "22"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule4 = {
                      name                       = "RDP"
                      priority                   = 400
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "3389"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
            }
      }
      nsg3 = {
        name                = "database-nsg-dev-eastus"
        location            = "eastus"
        resource_group_name = "rg-dev-eastus"
        virtual_network_name="vnet-dev-eastus"
        subnet_name="database-subnet-dev-eastus"
            security_rule ={
                    rule1 = { 
                      name                       = "http"
                      priority                   = 100
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "80"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule2 = {
                      name                       = "https"
                      priority                   = 200
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "443"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule3 = {
                      name                       = "ssh"
                      priority                   = 300
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "22"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule4 = {
                      name                       = "RDP"
                      priority                   = 400
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "3389"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
            }   
        }
      nsg4 = {
        name                = "frontend-nsg-dev-westus"
        location            = "westus"
        resource_group_name = "rg-dev-westus"
        virtual_network_name="vnet-dev-westus"
        subnet_name="frontend-subnet-dev-westus"
            security_rule ={
                    rule1 = { 
                      name                       = "http"
                      priority                   = 100
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "80"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule2 = {
                      name                       = "https"
                      priority                   = 200
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "443"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule3 = {
                      name                       = "ssh"
                      priority                   = 300
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "22"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                    rule4 = {
                      name                       = "RDP"
                      priority                   = 400
                      direction                  = "Inbound"
                      access                     = "Allow"
                      protocol                   = "Tcp"
                      source_port_range          = "*"
                      destination_port_range     = "3389"
                      source_address_prefix      = "*"
                      destination_address_prefix = "*"
                    }
                }
      }     
      nsg5 = {
        name                = "backend-nsg-dev-westus"
        location            = "westus"
        resource_group_name = "rg-dev-westus"
        virtual_network_name="vnet-dev-westus"
        subnet_name="frontend-subnet-dev-westus"
            security_rule ={
                rule1 = { 
                  name                       = "http"
                  priority                   = 100
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "80"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule2 = {
                  name                       = "https"
                  priority                   = 200
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "443"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule3 = {
                  name                       = "ssh"
                  priority                   = 300
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "22"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule4 = {
                  name                       = "RDP"
                  priority                   = 400
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "3389"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
            }
      }
      nsg6 = {
        name                = "database-nsg-dev-westus"
        location            = "westus"
        resource_group_name = "rg-dev-westus"
        virtual_network_name="vnet-dev-westus"
        subnet_name="database-subnet-dev-westus"
        security_rule ={
        rule1 = { 
          name                       = "http"
          priority                   = 100
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "80"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        }
        rule2 = {
          name                       = "https"
          priority                   = 200
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "443"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        }
        rule3 = {
          name                       = "ssh"
          priority                   = 300
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "22"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        }
        rule4 = {
          name                       = "RDP"
          priority                   = 400
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "3389"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        }
      }
      nsg7 = {
        name                = "frontend-nsg-dev-centralus"
        location            = "centralus"
        resource_group_name = "rg-dev-centralus"
        virtual_network_name="vnet-dev-centralus"
        subnet_name="frontend-subnet-dev-centralus"
            security_rule ={
                  rule1 = { 
                    name                       = "http"
                    priority                   = 100
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "80"
                    source_address_prefix      = "*"
                    destination_address_prefix = "*"
                  }
                  rule2 = {
                    name                       = "https"
                    priority                   = 200
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "443"
                    source_address_prefix      = "*"
                    destination_address_prefix = "*"
                  }
                  rule3 = {
                    name                       = "ssh"
                    priority                   = 300
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "22"
                    source_address_prefix      = "*"
                    destination_address_prefix = "*"
                  }
                  rule4 = {
                    name                       = "RDP"
                    priority                   = 400
                    direction                  = "Inbound"
                    access                     = "Allow"
                    protocol                   = "Tcp"
                    source_port_range          = "*"
                    destination_port_range     = "3389"
                    source_address_prefix      = "*"
                    destination_address_prefix = "*"
                  }
            }
      }
      nsg8 = {
        name                = "backend-nsg-dev-centralus"
        location            = "centralus"
        resource_group_name = "rg-dev-centralus"
        virtual_network_name="vnet-dev-centralus"
        subnet_name="frontend-subnet-dev-centralus"
            security_rule ={
                rule1 = { 
                  name                       = "http"
                  priority                   = 100
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "80"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule2 = {
                  name                       = "https"
                  priority                   = 200
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "443"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule3 = {
                  name                       = "ssh"
                  priority                   = 400
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "22"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule4 = {
                  name                       = "RDP"
                  priority                   = 400
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "3389"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
            }
      }
      nsg9 = {
        name                = "database-nsg-dev-centralus"
        location            = "centralus"
        resource_group_name = "rg-dev-centralus"
        virtual_network_name="vnet-dev-centralus"
        subnet_name="database-subnet-dev-centralus"
            security_rule ={
                rule1 = { 
                  name                       = "http"
                  priority                   = 100
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "80"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule2 = {
                  name                       = "https"
                  priority                   = 200
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "443"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule3 = {
                  name                       = "ssh"
                  priority                   = 400
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "22"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
                rule4 = {
                  name                       = "RDP"
                  priority                   = 400
                  direction                  = "Inbound"
                  access                     = "Allow"
                  protocol                   = "Tcp"
                  source_port_range          = "*"
                  destination_port_range     = "3389"
                  source_address_prefix      = "*"
                  destination_address_prefix = "*"
                }
        
          }
      }
}
}