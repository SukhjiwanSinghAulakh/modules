module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgn    = var.rgn
}
module "vnet" {
  depends_on = [ module.resource_group ]
  source = "../../modules/azurerm_virtual_network"
  vnet_name = var.vnet_name
}
module "subnet" {
  depends_on = [ module.vnet ]
  source = "../../modules/azurerm_subnet"
  subnet_name = var.subnet_name
}
