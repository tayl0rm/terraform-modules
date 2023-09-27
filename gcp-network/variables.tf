variable "name" {
  type        = string
  description = "Generic name for resources dedicated to the gcp-network."
}

variable "firewall_protocol" {
  default     = null
  type        = string
  description = "Protocol to added to the allow firewall rule."
}

variable "firewall_ports" {
  default     = null
  type        = list(string)
  description = "Port(s) to added to the allow firewall rule."
}

variable "firewall_source_tag" {
  default     = null
  type        = list(string)
  description = "Source Tag(s) which pair the firewall rule with other GCP resources, i.e. GCE Instance."
}

variable "firewall_source_ranges" {
  default     = null
  type        = list(string)
  description = "IP addresses added to the allow firewall rule."
}

variable "auto_create_subnetworks" {
  default     = false
  type        = bool
  description = "When enabled, subnetworks will automatically be created for the VPC."
}

variable "subnetwork_cidr" {
  type        = string
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

variable "create_firewall" {
  default     = false
  type        = bool
  description = "When enabled, create a firewall alongside other gcp-network resources."
}
