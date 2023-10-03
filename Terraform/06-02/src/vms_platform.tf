
variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu release name"
}

variable "vm_web_platform" {
  type        = string
  default     = "standard-v1"
  description = "platform_name"
}


variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA/1IjnpgG1ThNEzXuMy9uJWA4fP4NLsMDD4XQS0j27G k1235@CH6H"
  description = "ssh-keygen -t ed25519"
}

variable "vm_web_resources" {
  type = map(string)
  default = { cores = "2", memory = "1", core_fraction = "5" }
}
variable "vm_db_resources" {
  type = map(string)
  default = { cores = "2", memory = "2", core_fraction = "20" }
}