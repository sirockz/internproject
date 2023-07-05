#variables listed here should be reused constantly to make sure that they are as efficent as could be.
variable "key" {
  default = ["0"]

}

variable "datacenter" {
  default = "pancham"
}

variable "hosts" {
  default = [
    "esxi1",
    "esxi2",
    "esxi3",
  ]
}

