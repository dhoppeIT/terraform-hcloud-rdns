module "hcloud_rdns" {
  source = "../../"

  server_id  = data.hcloud_server.this.id
  ip_address = data.hcloud_server.this.ipv4_address
  dns_ptr    = "example-server.dhoppe.it"
}
