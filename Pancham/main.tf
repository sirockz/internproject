#Starter for everything, leave this one very bare bones and we should 
terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = "2.4.1"
    }
  }
}

provider "vsphere" {
  # Configuration options
}
resource "vsphere_license" "licenseKey" {
  liscense_key = var.key

}
