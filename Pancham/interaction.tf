provider "vsphere" {
    user = var.vsphere_user
    password = var.vsphere_password
    vsphere_server = var.vsphere_server
    allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
    name = var.datacenter
}

data "vsphere_datastore" "datastore" {
    name = 
}

#Create more later to get more of an understanding but overall weak when trying to understanding configuration of the code in this instance.