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
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_force_destroy"></a> [enable\_force\_destroy](#input\_enable\_force\_destroy) | When enabled, Terraform will delete all contents of a bucket when terraform destroy is ran. | `bool` | `false` | no |
| <a name="input_enable_logging"></a> [enable\_logging](#input\_enable\_logging) | When enabled, logs will be generated by the bucket. If enabled, a logging bucket must be supplied via the logging\_bucket variable. | `bool` | `false` | no |
| <a name="input_enable_public_prevention"></a> [enable\_public\_prevention](#input\_enable\_public\_prevention) | This can be inherited, enforced. | `string` | `"inherited"` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | When enabled, versioning will be added to the bucket and apply to its objects. | `bool` | `false` | no |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | Default GCP Project to deploy all resources into. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of the Google Cloud Storage bucket i.e. EU, US, ASIA. | `string` | `"EU"` | no |
| <a name="input_logging_bucket"></a> [logging\_bucket](#input\_logging\_bucket) | When enable\_logging is enabled, a logging bucket must be supplied. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Generic name for resources dedicated to the bucket. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default GCP region for the instance resources. | `string` | `"europe-west1"` | no |
| <a name="input_storage_class"></a> [storage\_class](#input\_storage\_class) | The storage class of the bucket, i.e. STANDARD, MULTI-REGIONAL, REGIONAL. | `string` | `"STANDARD"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
