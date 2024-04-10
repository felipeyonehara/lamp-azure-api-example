output "dns_name" {
  value = aws_instance.webserver.public_dns
  
}

output "mysql_server_name" {
  value = module.mysql.mysql_server_name
}

output "mysql_server_username" {
  value = module.mysql.mysql_server_username
}

output "mysql_server_password" {
  value = module.mysql.mysql_server_password
}

output "mysql_database_name" {
  value = module.mysql.mysql_database_name
}

output "app_insights_name" {
  value = module.appinsights.app_insights_name
}

output "keyvault_name" {
  value = module.keyvault.keyvault_name
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "cosmosdb_account_name" {
  value = module.cosmosdb.cosmosdb_account_name
}

output "container_name" {
  value = module.container.container_name
}

output "cdn_endpoint" {
  value = module.cdn.cdn_endpoint
}

output "location" {
  value = var.location
}

output "resource_group_name" {
  value = var.resource_group_name
}

output "environment" {
  value = var.environment
}

output "port" {
  value = var.port
}

output "protocol" {
  value = var.protocol
}

output "app_insights_location" {
  value = var.app_insights_location
}

output "app_insights_instrumentation_key" {
  value = module.appinsights.app_insights_instrumentation_key
}

output "app_insights_app_id" {
  value = module.appinsights.app_insights_app_id
}

output "app_insights_api_key" {
  value = module.appinsights.app_insights_api_key
}