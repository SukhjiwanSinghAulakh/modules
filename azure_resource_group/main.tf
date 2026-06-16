resource "azurerm_resource_group" "rg" {
  for_each = var.rg_name
  name     = "${var.prefix}-${each.value.name}-${each.value.location}"
  location = each.value.location
}