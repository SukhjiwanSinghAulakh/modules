module "rg" {
  source  = "../../modules/azure_resource_group"
  rg_name = var.rg_name
  prefix  = var.prefix
}
module "pvnet" {
  source              = "../../modules/azure_vnet"
  prefix              = var.prefix
  vnet                = var.vnet
  resource_group_name = module.rg.rg_name
  location            = module.rg.location
}