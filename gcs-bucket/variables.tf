variable "gcp_project" {
  type        = string
  description = "Default GCP Project to deploy all resources into."
}

variable "region" {
  default     = "europe-west1"
  type        = string
  description = "Default GCP region for the instance resources."
}

variable "name" {
  type        = string
  description = "Generic name for resources dedicated to the bucket."
}

variable "location" {
  default = "EU"
  type = string
  description = "The location of the Google Cloud Storage bucket i.e. EU, US, ASIA."
}

variable "storage_class" {
  default = "STANDARD"
  type = string
  description = "The storage class of the bucket, i.e. STANDARD, MULTI-REGIONAL, REGIONAL."
}

variable "enable_force_destroy" {
  default = false
  type = bool
  description = "When enabled, Terraform will delete all contents of a bucket when terraform destroy is ran."
}

variable "enable_public_prevention" {
  default = "inherited"
  type = string
  description = "This can be inherited, enforced."
}

variable "enable_logging" {
  default = false
  type = bool
  description = "When enabled, logs will be generated by the bucket. If enabled, a logging bucket must be supplied via the logging_bucket variable."
}

variable "logging_bucket" {
  default = null
  type = string
  description = "When enable_logging is enabled, a logging bucket must be supplied."
}

variable "enable_versioning" {
  default = false
  type = bool
  description = "When enabled, versioning will be added to the bucket and apply to its objects."
}

# variable "enable_lifecycle_rule" {
#   default = false
#   type = bool
#   description = "When enabled, a retention lifecycle rule can be added to the bucket and its objects. The rule must be applied by using the retention_age and lifecycle_action variables."
# }

# variable "retention_age" {
#   default = null
#   type = number
#   description = "The age in days to be used for the retention lifecycle rule."
# }

# variable "lifecycle_action" {
#   default = null
#   type = string
#   description = "The act taken when the retention age has been met by objects affected by the retention lifecycle rule."
# }
