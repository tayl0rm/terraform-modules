<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.vpc_firewall](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.vpc](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_subnetworks"></a> [auto\_create\_subnetworks](#input\_auto\_create\_subnetworks) | When enabled, subnetworks will automatically be created for the VPC. | `bool` | `false` | no |
| <a name="input_firewall_ports"></a> [firewall\_ports](#input\_firewall\_ports) | n/a | `list(string)` | n/a | yes |
| <a name="input_firewall_protocol"></a> [firewall\_protocol](#input\_firewall\_protocol) | n/a | `string` | n/a | yes |
| <a name="input_firewall_source_ranges"></a> [firewall\_source\_ranges](#input\_firewall\_source\_ranges) | n/a | `list(string)` | n/a | yes |
| <a name="input_firewall_source_tag"></a> [firewall\_source\_tag](#input\_firewall\_source\_tag) | n/a | `list(string)` | n/a | yes |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | Default GCP Project to deploy all resources into. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Generic name for resources dedicated to the gcp-network. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default GCP region for the gcp-network resources. | `string` | `"europe-west1"` | no |
| <a name="input_subnetwork_cidr"></a> [subnetwork\_cidr](#input\_subnetwork\_cidr) | CIDR for the subnetwork created within the VPC. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
