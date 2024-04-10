module "lamp" {
  source              = "../../modules/lamp"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}
