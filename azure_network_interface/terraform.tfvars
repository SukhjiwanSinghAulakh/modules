  nic = {
    nic1 = {
      name                = "nic1"
      location            = "eastus"
      resource_group_name = "dev-rg-frontend-eastus"
      ip_configuration = {
        name                          = "testconfiguration1"
        subnet_id                     = "
        private_ip_address_allocation = "Dynamic"
      
  }
  nic2 = {
    name                = "nic2"
    location            = "eastus"
    resource_group_name = "dev-rg-frontend-eastus"
    ip_configuration = {
      name                          = "nic2configuration1"
      subnet_id                     = ""
      private_ip_address_allocation = "Dynamic"
     }
  }
  }
}


  