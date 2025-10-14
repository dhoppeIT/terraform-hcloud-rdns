variable "dns_ptr" {
  type        = string
  description = "The DNS address the ip_address should resolve to"
}

variable "ip_address" {
  type        = string
  description = "The IP address that should point to dns_ptr"
}

variable "server_id" {
  type        = number
  default     = null
  description = "The server the ip_address belongs to"
}

variable "primary_ip_id" {
  type        = number
  default     = null
  description = "The Primary IP the ip_address belongs to"
}

variable "floating_ip_id" {
  type        = number
  default     = null
  description = "The Floating IP the ip_address belongs to"
}

variable "load_balancer_id" {
  type        = number
  default     = null
  description = "The Load Balancer the ip_address belongs to"
}
