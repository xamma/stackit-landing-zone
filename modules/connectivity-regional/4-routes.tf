####################
## FIREWALL ROUTE ##
####################

resource "stackit_routing_table" "wan" {
  organization_id = var.organization_id
  network_area_id = var.network_area_id
  name            = "wan"
}

resource "stackit_routing_table_route" "wan" {
  organization_id  = var.organization_id
  network_area_id  = var.network_area_id
  routing_table_id = stackit_routing_table.wan.routing_table_id

  destination = {
    type  = "cidrv4"
    value = "0.0.0.0/0"
  }

  next_hop = {
    type = "internet"
  }
}

#########################
## NETWORK AREA ROUTES ##
#########################

resource "stackit_network_area_route" "default" {
  organization_id = var.organization_id
  network_area_id = var.network_area_id

  destination = {
    type  = "cidrv4"
    value = "0.0.0.0/0"
  }
  next_hop = {
    type  = "ipv4"
    value = stackit_network_interface.lan.ipv4
  }
}