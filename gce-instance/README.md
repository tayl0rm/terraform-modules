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
| [google_compute_address.instance_ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_firewall.firewall](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_instance.server_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_project_iam_member.service_account_iam](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_image"></a> [compute\_image](#input\_compute\_image) | The image that will be used by the instance. This should be a link to an Image repository i.e. DockerHub, Artifact Registry. | `string` | n/a | yes |
| <a name="input_firewall_port"></a> [firewall\_port](#input\_firewall\_port) | The port(s) which will be added to the firewall's allowed ports list. | `list(string)` | n/a | yes |
| <a name="input_firewall_protocol"></a> [firewall\_protocol](#input\_firewall\_protocol) | The networking protocol which will be assigned to the firewall used by the instance. | `string` | `"tcp"` | no |
| <a name="input_firewall_source"></a> [firewall\_source](#input\_firewall\_source) | A list of allowed IP addresses to be added to the firewall. | `list(string)` | n/a | yes |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | Default GCP Project to deploy all resources into. | `string` | n/a | yes |
| <a name="input_ip_address_purpose"></a> [ip\_address\_purpose](#input\_ip\_address\_purpose) | Purpose of the IP address being created. | `string` | `"GCE_ENDPOINT"` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | Type of IP address which will be created, this can be set to EXTERNAL or INTERNAL. | `string` | `"EXTERNAL"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | The machine type that will be used when deploying the instance. | `string` | `"e2-standard-2"` | no |
| <a name="input_name"></a> [name](#input\_name) | Generic name for resources dedicated to the instance. | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | The VPC which will house the instance. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default GCP region for the instance resources. | `string` | `"europe-west1"` | no |
| <a name="input_service_account_roles"></a> [service\_account\_roles](#input\_service\_account\_roles) | A list of GCP IAM roles to be added to the instance's Service Account. | `list(string)` | n/a | yes |
| <a name="input_startup_script"></a> [startup\_script](#input\_startup\_script) | A script which will run as the instance starts up. | `string` | `null` | no |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | The subnetwork which will house the instance. The subnetwork should live in the above stated VPC. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->