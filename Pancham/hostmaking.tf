#Creates one whole funny instance, but I'm unsure how it'll start an OS and install it.
data "vsphere_datacenter" "datacenter" {
  name = var.datacenter
}

data "vsphere_host_thumbprint" "thumbprint" {
  address  = "esx-01.example.com"
  insecure = true
}

resource "vsphere_host" "esx-01" {
  hostname   = "esx-01.example.com"
  username   = "root"
  password   = "password"
  license    = "FUCKK"
  thumbprint = data.vsphere_host_thumbprint.thumbprint.id
  datacenter = data.vsphere_datacenter.datacenter.id

}