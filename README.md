# terraform-hcloud-rdns

Terraform module to manage the following Hetzner Cloud resources:

* hcloud_rdns

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "hcloud_server" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-server/local"
  version = "1.0.0"

  name        = "example-server"
  image       = "debian-13"
  server_type = "cx22"

  location = "nbg1"
}

module "hcloud_rdns" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-rdns/local"
  version = "1.0.0"

  server_id  = module.hcloud_server.id
  ip_address = module.hcloud_server.ipv4_address
  dns_ptr    = "example-server.dhoppe.it"
}

```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_rdns.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/rdns) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_ptr"></a> [dns\_ptr](#input\_dns\_ptr) | The DNS address the ip\_address should resolve to | `string` | n/a | yes |
| <a name="input_floating_ip_id"></a> [floating\_ip\_id](#input\_floating\_ip\_id) | The Floating IP the ip\_address belongs to | `number` | `null` | no |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | The IP address that should point to dns\_ptr | `string` | n/a | yes |
| <a name="input_load_balancer_id"></a> [load\_balancer\_id](#input\_load\_balancer\_id) | The Load Balancer the ip\_address belongs to | `number` | `null` | no |
| <a name="input_primary_ip_id"></a> [primary\_ip\_id](#input\_primary\_ip\_id) | The Primary IP the ip\_address belongs to | `number` | `null` | no |
| <a name="input_server_id"></a> [server\_id](#input\_server\_id) | The server the ip\_address belongs to | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_ptr"></a> [dns\_ptr](#output\_dns\_ptr) | DNS pointer for the IP address |
| <a name="output_floating_ip_id"></a> [floating\_ip\_id](#output\_floating\_ip\_id) | The Floating IP the IP address belongs to |
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the Reverse DNS Entry |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | IP address |
| <a name="output_load_balancer_id"></a> [load\_balancer\_id](#output\_load\_balancer\_id) | The Load Balancer the IP address belongs to |
| <a name="output_primary_ip_id"></a> [primary\_ip\_id](#output\_primary\_ip\_id) | The Primary IP the IP address belongs to |
| <a name="output_server_id"></a> [server\_id](#output\_server\_id) | The server the IP address belongs to |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
