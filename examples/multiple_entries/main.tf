module "hcloud_rdns" {
  source  = "dhoppeIT/rdns/hcloud"
  version = "~> 0.1"

  count = length(data.hcloud_servers.default.servers)

  server_id  = data.hcloud_servers.default.servers[count.index].id
  ip_address = data.hcloud_servers.default.servers[count.index].ipv4_address
  dns_ptr    = "${data.hcloud_servers.default.servers[count.index].name}.${local.dns_ptr}"
}
