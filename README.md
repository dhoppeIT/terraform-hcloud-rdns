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
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.0.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | >= 1.0.0, < 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_rdns.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/rdns) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_ptr"></a> [dns\_ptr](#input\_dns\_ptr) | The DNS address the ip\_address should resolve to | `string` | n/a | yes |
| <a name="input_floating_ip_id"></a> [floating\_ip\_id](#input\_floating\_ip\_id) | The Floating IP the ip\_address belongs to | `number` | `null` | no |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | The IP address that should point to dns\_ptr | `string` | n/a | yes |
| <a name="input_load_balancer_id"></a> [load\_balancer\_id](#input\_load\_balancer\_id) | The Load Balancer the ip\_address belongs to | `number` | `null` | no |
| <a name="input_server_id"></a> [server\_id](#input\_server\_id) | The server the ip\_address belongs to | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_ptr"></a> [dns\_ptr](#output\_dns\_ptr) | DNS pointer for the IP address |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | IP address |

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-rdns/blob/main/LICENSE) for full details.
