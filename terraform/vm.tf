resource "yandex_compute_instance" "app01" {
  name = "app01"

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.disk_size
    }
  }

  network_interface {
    index     = 1
    subnet_id = yandex_vpc_subnet.zadachnick-logs.id
  }

  resources {
    cores  = var.vm_size.cores
    memory = var.vm_size.memory
  }
}