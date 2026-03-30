##################
## NETWORK AREA ##
##################

locals {
  project_labels = merge(
    var.network_area_id != null ? { "networkArea" = var.network_area_id } : {},
    var.labels
  )
}

resource "stackit_network_area" "this" {
  for_each = { for na in var.network_areas : na.name => na }

  organization_id = var.organization_id
  name            = each.key
  labels          = merge(local.project_labels, { "preview/routingtables" = "true" })
}

resource "stackit_network_area_region" "this" {
  for_each = { for na in var.network_areas : na.name => na }

  organization_id = var.organization_id
  network_area_id = stackit_network_area.this[each.key].network_area_id

  ipv4 = {
    network_ranges        = each.value.network_ranges
    transfer_network      = each.value.transfer_network_range
    max_prefix_length     = each.value.max_prefix_length
    min_prefix_length     = each.value.min_prefix_length
    default_prefix_length = each.value.default_prefix_length
    default_nameservers   = each.value.default_nameservers
  }
}