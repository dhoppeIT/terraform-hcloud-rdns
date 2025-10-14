output "id" {
  description = "Unique ID of the Reverse DNS Entry"
  value       = module.hcloud_rdns.id
}

output "dns_ptr" {
  description = "DNS pointer for the IP address"
  value       = module.hcloud_rdns.dns_ptr
}

output "ip_address" {
  description = "IP address"
  value       = module.hcloud_rdns.ip_address
}

output "server_id" {
  description = "The server the IP address belongs to"
  value       = module.hcloud_rdns.server_id
}

output "primary_ip_id" {
  description = "The Primary IP the IP address belongs to"
  value       = module.hcloud_rdns.primary_ip_id
}

output "floating_ip_id" {
  description = "The Floating IP the IP address belongs to"
  value       = module.hcloud_rdns.floating_ip_id
}

output "load_balancer_id" {
  description = "The Load Balancer the IP address belongs to"
  value       = module.hcloud_rdns.load_balancer_id
}
