variable "api_image" {
  description = "The image for the API container"
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
