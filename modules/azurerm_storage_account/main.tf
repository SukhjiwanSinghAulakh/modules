resource "azurerm_resource_group" "rg" {
  for_each   = var.resg
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
  tags       = each.value.tags
}
resource "azurerm_storage_account" "stda" {
  for_each                 = var.std
  name                     = each.value.name
  location                 = azurerm_resource_group.rg[each.value.key].location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  resource_group_name      = azurerm_resource_group.rg[each.value.key].name
  tags                     = each.value.tags
}
