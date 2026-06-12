resg = {
  resg1 = {
    name       = "rg-terraform-morning"
    location   = "eastus"
    managed_by = "terraform"
    tags = {
      brand     = "chedilal"
      education = "anpad"
      signature = "thappadchap"
      shauk     = "defender"
    }
  }
  resg2 = {
    name       = "rg-terraform-morning2"
    location   = "eastus"
    managed_by = "terraform"
    tags = {
      brand     = "chedilal"
      education = "anpad"
      signature = "thappadchap"
      shauk     = "defender"
    }
  }
  resg3 = {
    name       = "rg-terraform-morning3"
    location   = "eastus"
    managed_by = "terraform"
    tags = {
      brand     = "chedilal"
      education = "anpad"
      signature = "thappadchap"
      shauk     = "defender"
    }
  }
}
std = {
  std1 = {
    name                     = "stterraformmorning"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    key                      = "resg1"
    tags = {
      brand     = "chedilal"
      education = "anpad"
      signature = "thappadchap"
      shauk     = "defender"
    }
  }
  std2 = {
    name                     = "stterraformmorning2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    key                      = "resg2"
    tags = {
      brand     = "chedilal"
      education = "anpad"
      signature = "thappadchap"
      shauk     = "defender"
    }
  }
  std3 = {
    name                     = "stterraformmorning3"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    key                      = "resg3"
    tags = {
      brand     = "chedilal"
      education = "anpad"
      signature = "thappadchap"
      shauk     = "defender"
    }
  }
}