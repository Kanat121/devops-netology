

resource "yandex_compute_instance" "vm_list"  {
  depends_on = [ yandex_compute_instance.platform ]
  for_each = {
    for key,value in var.vm_list:
    key => value
  }

  name        = each.value.vm_name
  platform_id = var.vm_web_platform
  resources {
    cores         = each.value.cores
    memory        = each.value.memory
    
    core_fraction = var.vm_web_resources.core_fraction
    }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size          = each.value.disk
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