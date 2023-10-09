locals {
  metadata = {
    serial-port-enable = 1
    ssh_keys = "ubuntu:${file("~/.ssh/terraform_06-02.pub")}"
  }
}