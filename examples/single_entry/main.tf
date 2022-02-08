module "hcloud_rdns" {
  source  = "dhoppeIT/rdns/hcloud"
  version = "~> 0.1"

  server_id  = data.hcloud_server.default.id
  ip_address = data.hcloud_server.default.ipv4_address
  dns_ptr    = "${data.hcloud_server.default.name}.${local.dns_ptr}"
}
