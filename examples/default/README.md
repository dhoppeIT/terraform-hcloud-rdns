# Example

The configuration in this directory creates:

* hcloud_rdns

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_rdns"></a> [hcloud\_rdns](#module\_hcloud\_rdns) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [hcloud_server.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/data-sources/server) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Hetzner Cloud API endpoint, can be used to override the default API Endpoint | `string` | `"https://api.hetzner.cloud/v1"` | no |
| <a name="input_poll_function"></a> [poll\_function](#input\_poll\_function) | Configures the type of function to be used during the polling | `string` | `"exponential"` | no |
| <a name="input_poll_interval"></a> [poll\_interval](#input\_poll\_interval) | Configures the interval in which actions are polled by the client | `string` | `"500ms"` | no |
| <a name="input_token"></a> [token](#input\_token) | This is the Hetzner Cloud API Token, can also be specified with the HCLOUD\_TOKEN environment variable | `string` | n/a | yes |

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
