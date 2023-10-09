###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "vm_web_resources" {
  type    = map(string)
  default = { cores = "2", memory = "1", core_fraction = "5" }
}

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


variable "vm_count" {
  description = "Number of Virtual Machines"
  default     = 3
  type        = string
}

variable "vm_count_disk" {
  description = "Number of Virtual Disk"
  default     = 3
  type        = string
}

variable "vm_list" {
  type = list(object({
    vm_name = string
    cores   = number
    memory  = number
    disk    = number
  }))
  default = [
    {
      vm_name = "main"
      cores   = 2
      memory  = 1
      disk    = 8
    },
    {
      vm_name = "replica"
      cores   = 4
      memory  = 2
      disk    = 8
    }
  ]
}
