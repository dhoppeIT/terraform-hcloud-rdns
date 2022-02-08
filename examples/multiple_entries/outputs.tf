output "rdns_dns_ptr" {
  description = "DNS pointer for the IP address"
  value       = module.hcloud_rdns.*.dns_ptr
}

output "rdns_ip_address" {
  description = "IP address"
  value       = module.hcloud_rdns.*.ip_address
}
