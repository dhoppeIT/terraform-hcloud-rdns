output "id" {
  description = "Unique ID of the Reverse DNS Entry"
  value       = hcloud_rdns.this.id
}

output "dns_ptr" {
  description = "DNS pointer for the IP address"
  value       = hcloud_rdns.this.dns_ptr
}

output "ip_address" {
  description = "IP address"
  value       = hcloud_rdns.this.ip_address
}

output "server_id" {
  description = "The server the IP address belongs to"
  value       = hcloud_rdns.this.server_id
}

output "primary_ip_id" {
  description = "The Primary IP the IP address belongs to"
  value       = hcloud_rdns.this.primary_ip_id
}

output "floating_ip_id" {
  description = "The Floating IP the IP address belongs to"
  value       = hcloud_rdns.this.floating_ip_id
}

output "load_balancer_id" {
  description = "The Load Balancer the IP address belongs to"
  value       = hcloud_rdns.this.load_balancer_id
}
