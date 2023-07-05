#Creates cluster to which we could put instances into it but overall does nothing else, needs ports and other stuff shoved in as well to even slightly work
data "vsphere_datacenter" "datacenter" {
  name = "pancham"

}

data "vsphere_host" "hosts" {
  count         = length(var.hosts)
  name          = var.hosts[count.index]
  datacenter_id = data.vsphere_datacenter.dog.id
}

resource "vsphere_compute_cluster" "Horrid" {
  name            = "terraform-compute-cluster-test"
  datacenter_id   = data.vsphere_datacenter.dog.id
  host_system_ids = ["${data.vsphere_host.hosts.*.id}"]

  drs_enabled          = true
  drs_automation_level = "fullyAutomated"

  ha_enabled = true

}

data "vsphere_compute_cluster" "cluster_host_group" {
  name               = "terraform-test-cluster-host-group"
  compute_cluster_id = vsphere_compute_cluster.compute_cluster.id
  host_system_ids    = ["${data.vsphere_host.hosts.*.id}"]

}