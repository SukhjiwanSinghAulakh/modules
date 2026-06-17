prefix = "dev"
rg_name = {
  rg1 = {
    name     = "rg-01"
    location = "japanwest"
  }
  rg2 = {
    name     = "rg-02"
    location = "japanwest"
  }
}
vnet = {
  vnet1 = {
    name   = "vnet-01"
    rg_key = "rg1"
  }
  vnet2 = {
    name   = "vnet-02"
    rg_key = "rg2"
  }
}