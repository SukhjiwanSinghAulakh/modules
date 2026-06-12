vmwin = {
  vmwin1 = {
    name                = "example-machine"
    resource_group_name = "rg-terraform-morning"
    location            = "eastus"
    size                = "Standard_D2s_v3"
        admin_username        = "adminuser"
      admin_password        = "P@$$w0rd1234!"
      network_interface_ids = ["/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/networkInterfaces/nic1"]
    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2016-Datacenter"
      version   = "latest"
    }
  }
  vmwin2 = {
    name                = "example-machine"
    resource_group_name = "rg-terraform-morning2"
    location            = "westus"
    size                = "Standard_D2s_v3"
      admin_username        = "adminuser"
      admin_password        = "P@$$w0rd1234!"
      network_interface_ids = ["/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning2/providers/Microsoft.Network/networkInterfaces/nic2"]
    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2016-Datacenter"
      version   = "latest"
    }

  }
  vmwin3 = {
    name                = "example-machine"
    resource_group_name = "rg-terraform-morning3"
    location            = "centralus"
    size                = "Standard_D2s_v3"
      admin_username        = "adminuser"
      admin_password        = "P@$$w0rd1234!"
      network_interface_ids = ["/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning3/providers/Microsoft.Network/networkInterfaces/nic3"]

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2016-Datacenter"
      version   = "latest"
    }
  }

}
