output "id" {
  description = "Unique ID of the Reverse DNS Entry"
  value       = values(module.hcloud_rdns)[0].id
}

output "dns_ptr" {
  description = "DNS pointer for the IP address"
  value       = values(module.hcloud_rdns)[0].dns_ptr
}

output "ip_address" {
  description = "IP address"
  value       = values(module.hcloud_rdns)[*].ip_address
}

output "server_id" {
  description = "The server the IP address belongs to"
  value       = values(module.hcloud_rdns)[0].server_id
}

output "primary_ip_id" {
  description = "The Primary IP the IP address belongs to"
  value       = values(module.hcloud_rdns)[0].primary_ip_id
}

output "floating_ip_id" {
  description = "The Floating IP the IP address belongs to"
  value       = values(module.hcloud_rdns)[0].floating_ip_id
}

output "load_balancer_id" {
  description = "The Load Balancer the IP address belongs to"
  value       = values(module.hcloud_rdns)[0].load_balancer_id
}
