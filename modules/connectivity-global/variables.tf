variable "labels" {
  type        = map(string)
  description = "Additional labels to apply to all folders."
  default     = {}
}

variable "network_area_id" {
  type        = string
  description = "Network Area ID to deploy resources into. Required if network is enabled."
  default     = null
}

variable "network_areas" {
  type = list(object({
    name                   = string
    network_ranges         = list(object({ prefix = string }))
    transfer_network_range = string
    max_prefix_length      = optional(number, 28)
    min_prefix_length      = optional(number, 24)
    default_prefix_length  = optional(number, 28)
    default_nameservers    = optional(list(string), ["1.0.0.1", "1.1.1.1"])
  }))
  description = "List of network areas to create, each with its own name, ranges, and configuration."
}

variable "organization_id" {
  type        = string
  description = "Container ID of the root folder or organization under which the company folder will be created."
}