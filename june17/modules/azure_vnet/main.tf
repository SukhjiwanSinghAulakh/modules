resource "azurerm_virtual_network" "vnet" {
  for_each               = var.vnet
  name                   = "${var.prefix}-${each.value.name}-${each.value.location}"
  resource_group_name = var.resource_group_name[each.value.rg_key]
  location = var.location[each.value.rg_key]
  address_space       = each.value.address_space
}