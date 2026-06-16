vmlinux = {
  vmlinux1 = {
    name                            = "linux-machine"
    resource_group_name             = "dev-rg-frontend-eastus"
    location                        = "eastus"
    size                            = "Standard_D4_v5"
    admin_username                  = "adminuser"
    admin_password                  = "P@$$w0rd1234!"
    disable_password_authentication = false

    network_interface_ids = ["/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/dev-rg-frontend-eastus/providers/Microsoft.Network/networkInterfaces/nic2"]

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}
