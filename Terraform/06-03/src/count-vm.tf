variable "server_name" {
  type    = string
  default = "web"

}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image
}


resource "yandex_compute_instance" "platform" {
  count = var.vm_count
  name  = "${var.server_name}-${count.index + 1}"

  platform_id = var.vm_web_platform
  resources {
    cores         = var.vm_web_resources.cores
    memory        = var.vm_web_resources.memory
    core_fraction = var.vm_web_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = local.metadata.serial-port-enable
    ssh-keys           = local.metadata.ssh_keys
  }
}
