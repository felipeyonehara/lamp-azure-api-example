resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_group" "api" {
  name                = "api-${var.environment}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  containers {
    name   = "php-apache"
    image  = "your_php_apache_docker_image"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
  ip_address_type = "public"
  dns_name_label  = "api-${var.environment}-unique"
}

# Define Azure Database for MySQL, Application Insights, etc., similarly to the API container group
resource "azurerm_mysql_server" "mysql" {
  name                = var.mysql_server_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "B_Gen5_1"
  storage_profile {
    storage_mb            = 5120
    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"
  }
  administrator_login          = var.mysql_server_username
  administrator_login_password = var.mysql_server_password
  version                      = "5.7"
}

resource "azurerm_application_insights" "appinsights" {
  name                = "appinsights-${var.environment}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"
}

output "api_dns_name" {
  value = azurerm_container_group.api.fqdn
}

output "mysql_server_name" {
  value = azurerm_mysql_server.mysql.name
}

output "mysql_server_username" {
  value = azurerm_mysql_server.mysql.administrator_login
}


