variable "subnets" {
  type = list(object({ zone = string, cidr = list(string) }))
}

variable "env_name" {
  type    = string
  default = "develop"
}
