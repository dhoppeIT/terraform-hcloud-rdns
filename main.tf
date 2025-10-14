resource "hcloud_rdns" "this" {
  dns_ptr    = var.dns_ptr
  ip_address = var.ip_address

  server_id        = var.server_id
  primary_ip_id    = var.primary_ip_id
  floating_ip_id   = var.floating_ip_id
  load_balancer_id = var.load_balancer_id
}
