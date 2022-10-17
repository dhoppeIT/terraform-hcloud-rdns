# terraform-hcloud-rdns

This example will manage the Hetzner Cloud DNS and creates multiple reverse DNS entries.

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-hcloud-rdns/blob/main/examples/multiple_entries/rover.svg?raw=true" width="100%" height="100%">

## Usage

To run this example, you need to execute the following commands:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

:warning: This example may create resources that cost money. Execute the command
`terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.32.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_rdns"></a> [hcloud\_rdns](#module\_hcloud\_rdns) | dhoppeIT/rdns/hcloud | ~> 0.1 |

## Resources

| Name | Type |
|------|------|
| [hcloud_servers.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/data-sources/servers) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | The token used to authenticate with Hetzner Cloud | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rdns_dns_ptr"></a> [rdns\_dns\_ptr](#output\_rdns\_dns\_ptr) | DNS pointer for the IP address |
| <a name="output_rdns_id"></a> [rdns\_id](#output\_rdns\_id) | Unique ID of the Reverse DNS entry |
| <a name="output_rdns_ip_address"></a> [rdns\_ip\_address](#output\_rdns\_ip\_address) | IP address |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-rdns/blob/main/LICENSE) for full details.
