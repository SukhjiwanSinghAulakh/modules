resource "azurerm_virtual_network" "vnet" {
  for_each               = var.vnet
  name                   = "${var.prefix}-${each.value.name}-${each.value.location}"
  location               = each.value.location
 resource_group_name = each.value.azurerm_resource_group
  address_space       = each.value.address_space
}