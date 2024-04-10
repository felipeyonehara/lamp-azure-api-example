variable "apache_image" {
  description = "The Docker image to use for the Apache container"
  type        = string
  
}

variable "cpu" {
  description = "The CPU to allocate to the container"
  type        = string
}

variable "memory" {
  description = "The memory to allocate to the container"
  type        = string
}

variable "dns_name_label" {
  description = "The DNS name label for the container group"
  type        = string
}

variable "environment" {
  description = "The environment for the resources"
  type        = string
}


variable "location" {
  description = "The location for the resources"
  type        = string
}


variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "port" {
  description = "The port to expose on the container"
  type        = string
}

variable "protocol" {
  description = "The protocol to use for the port"
  type        = string
}

variable "mysql_server_name" {
  description = "The name of the MySQL server"
  type        = string
}

variable "mysql_server_username" {
  description = "The username for the MySQL server"
  type        = string
}

variable "mysql_server_password" {
  description = "The password for the MySQL server"
  type        = string
}

variable "mysql_database_name" {
  description = "The name of the MySQL database"
  type        = string
}

variable "app_insights_name" {
  description = "The name of the Application Insights instance"
  type        = string
}

variable "app_insights_location" {
  description = "The location for the Application Insights instance"
  type        = string
}

variable "app_insights_kind" {
  description = "The kind of the Application Insights instance"
  type        = string
}

variable "app_insights_application_type" {
  description = "The application type for the Application Insights instance"
  type        = string
}

variable "app_insights_retention_in_days" {
  description = "The retention in days for the Application Insights instance"
  type        = number
}

variable "app_insights_instrumentation_key" {
  description = "The instrumentation key for the Application Insights instance"
  type        = string
}
