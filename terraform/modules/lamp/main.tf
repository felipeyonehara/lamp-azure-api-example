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

# Define Azure Database for MySQL, Application Insights, etc., similarly

