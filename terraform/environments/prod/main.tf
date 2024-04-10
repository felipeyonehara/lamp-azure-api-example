module "lamp" {
  source              = "../../modules/lamp"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "mysql" {
  source              = "../../modules/mysql"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "appinsights" {
  source              = "../../modules/appinsights"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "dns" {
  source              = "../../modules/dns"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "keyvault" {
  source              = "../../modules/keyvault"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "storage" {
  source              = "../../modules/storage"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "cosmosdb" {
  source              = "../../modules/cosmosdb"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "container" {
  source              = "../../modules/container"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "cdn" {
  source              = "../../modules/cdn"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "network" {
  source              = "../../modules/network"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "security" {
  source              = "../../modules/security"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "monitoring" {
  source              = "../../modules/monitoring"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "automation" {
  source              = "../../modules/automation"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "backup" {
  source              = "../../modules/backup"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "identity" {
  source              = "../../modules/identity"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "policy" {
  source              = "../../modules/policy"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "cost" {
  source              = "../../modules/cost"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "log" {
  source              = "../../modules/log"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

module "dashboard" {
  source              = "../../modules/dashboard"
  resource_group_name = "prod-rg"
  location            = "East US"
  environment         = "prod"
}

