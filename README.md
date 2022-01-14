# terraform-hcloud-rdns

Terraform module to manage the Hetzner Cloud resource (hcloud_rdns).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-hcloud-rdns/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "hcloud-rdns" {
  source = "dhoppeIT/rdns/hcloud"

  server_id  = 17273771
  ip_address = "10.0.0.2"
  dns_ptr    = "debian.dhoppe.it"
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-rdns/blob/main/LICENSE) for full details.
