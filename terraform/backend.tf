terraform {
  backend "azurerm" {
    resource_group_name   = "TerraformStateRG"
    storage_account_name  = "tfstateYOURUNIQUEID"
    container_name        = "tfstate"
    key                   = "prod.terraform.tfstate"
  }
}
