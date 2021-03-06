output "id" {
  description = "Unique ID of the Reverse DNS entry"
  value       = hcloud_rdns.default.id
}

output "dns_ptr" {
  description = "DNS pointer for the IP address"
  value       = hcloud_rdns.default.dns_ptr
}

output "ip_address" {
  description = "IP address"
  value       = hcloud_rdns.default.ip_address
}
