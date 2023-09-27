variable "gcp_project" {
  type        = string
  description = "Default GCP Project to deploy all resources into."
}

variable "name" {
  description = "Generic name for resources dedicated to the instance."
  type        = string
}

variable "ip_address_type" {
  default     = "EXTERNAL"
  type        = string
  description = "Type of IP address which will be created, this can be set to EXTERNAL or INTERNAL."
}

variable "ip_address_purpose" {
  default     = "GCE_ENDPOINT"
  type        = string
  description = "Purpose of the IP address being created."
}

variable "machine_type" {
  default     = "e2-standard-2"
  type        = string
  description = "The machine type that will be used when deploying the instance."
}

variable "region" {
  default     = "europe-west1"
  type        = string
  description = "Default GCP region for the instance resources."
}

variable "compute_image" {
  type        = string
  description = "The image that will be used by the instance. This should be a link to an Image repository i.e. DockerHub, Artifact Registry."
}

variable "network" {
  type        = string
  description = "The VPC which will house the instance."
}

variable "subnetwork" {
  type        = string
  description = "The subnetwork which will house the instance. The subnetwork should live in the above stated VPC."
}

variable "startup_script" {
  default     = null
  type        = string
  description = "A script which will run as the instance starts up."
}

variable "firewall_protocol" {
  default     = "tcp"
  type        = string
  description = "The networking protocol which will be assigned to the firewall used by the instance."
}

variable "firewall_port" {
  type        = list(string)
  description = "The port(s) which will be added to the firewall's allowed ports list."
}

variable "firewall_source" {
  type        = list(string)
  description = "A list of allowed IP addresses to be added to the firewall."
}

variable "service_account_roles" {
  type        = list(string)
  description = "A list of GCP IAM roles to be added to the instance's Service Account."
}
