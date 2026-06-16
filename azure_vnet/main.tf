resource"azurerm_virtual_network""vnet"{
  for_each=var.vnet
  name="${each.prefix}-${each.value.name}-${each.value.location}"
  location=each.value.location
  azurerm_resource_group=each.value.azurerm_resource_group
  address_perfix=each.value.address_perfix
}