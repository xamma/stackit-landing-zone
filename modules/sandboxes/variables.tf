variable "parent_container_id" {
  type        = string
  description = "Parent container ID (folder or organization) where the project will be created."
}

variable "naming_pattern" {
  type        = string
  description = "Naming prefix for all resources in this module, e.g. \"myco-pltfm-net-prod\"."
}

variable "project_name" {
  type        = string
  description = "Name of the STACKIT project to create."
  default     = null
}

variable "sandboxes" {
  type = list(object({
    project_name        = string
    owner_emails        = optional(list(string))
    project_owner_email = string
  }))

  description = "List of sandboxes to create."
  default     = []
}