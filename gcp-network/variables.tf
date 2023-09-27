variable "name" {
  type = string
  description = "Generic name for resources dedicated to the gcp-network."
}

variable "firewall_protocol" {
  type = string
  description = ""
}

variable "firewall_ports" {
  type = list(string)
  description = ""
}

variable "firewall_source_tag" {
  type = list(string)
  description = ""
}

variable "firewall_source_ranges" {
  type = list(string)
  description = ""
}

variable "auto_create_subnetworks" {
  default     = false
  type = bool
  description = "When enabled, subnetworks will automatically be created for the VPC."
}

variable "subnetwork_cidr" {
  type = string
  description = "CIDR for the subnetwork created within the VPC."
}

variable "gcp_project" {
  type        = string
  description = "Default GCP Project to deploy all resources into."
}

variable "region" {
  default     = "europe-west1"
  type        = string
  description = "Default GCP region for the gcp-network resources."
}
