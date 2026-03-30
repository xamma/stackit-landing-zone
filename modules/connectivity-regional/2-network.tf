##############
## NETWORKS ##
##############

resource "stackit_network" "lan" {
  project_id = stackit_resourcemanager_project.this.project_id
  name       = "lan_network"
  routed     = true
}

resource "stackit_network" "wan" {
  project_id       = stackit_resourcemanager_project.this.project_id
  name             = "wan_network"
  routing_table_id = stackit_routing_table.wan.routing_table_id
  routed           = true # needs to be true, since floating will be attached to router; also means connected to network area --> will get routes from there as well
}

################
## INTERFACES ##
################

resource "stackit_network_interface" "wan" {
  name       = "vtnet0_wan"
  project_id = stackit_resourcemanager_project.this.project_id
  network_id = stackit_network.wan.network_id
  security   = false
}

resource "stackit_network_interface" "lan" {
  name       = "vtnet1_lan"
  project_id = stackit_resourcemanager_project.this.project_id
  network_id = stackit_network.lan.network_id
  security   = false
}

###############
## PUBLIC IP ##
###############

resource "stackit_public_ip" "wan-ip" {
  project_id           = stackit_resourcemanager_project.this.project_id
  network_interface_id = stackit_network_interface.wan.network_interface_id
}
