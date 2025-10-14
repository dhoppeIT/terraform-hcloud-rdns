module "hcloud_rdns" {
  source = "../../"

  for_each = toset(
    [
      data.hcloud_server.this.ipv4_address,
      data.hcloud_server.this.ipv6_address
    ]
  )

  server_id  = data.hcloud_server.this.id
  ip_address = each.value
  dns_ptr    = "example-server.dhoppe.it"
}
