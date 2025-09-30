resource "yandex_compute_instance" "app01" {
  name = "app01"
  hostname = "app01"
  platform_id = "standard-v3"

  resources {
    cores  = var.vm_size.cores
    memory = var.vm_size.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.disk_size
      type = "network-ssd"
    }
  }

  network_interface {
    index     = 0
    subnet_id = yandex_vpc_subnet.zadachnick-logs.id
    nat = true
    security_group_ids = [ yandex_vpc_security_group.zadachnick-logs.id ]
  }


  metadata = {
    ssh-keys = "m1xxos:${file("~/.ssh/id_rsa.pub")}"
  }

  scheduling_policy {
    preemptible = true
  }

  labels = var.labels
}

resource "yandex_compute_instance" "mon01" {
  name = "mon01"
  hostname = "mon01"
  platform_id = "standard-v3"

  resources {
    cores  = var.vm_size.cores
    memory = var.vm_size.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.disk_size
      type = "network-ssd"
    }
  }

  network_interface {
    index     = 0
    subnet_id = yandex_vpc_subnet.zadachnick-logs.id
    nat = true
    security_group_ids = [ yandex_vpc_security_group.zadachnick-logs.id ]
  }


  metadata = {
    ssh-keys = "m1xxos:${file("~/.ssh/id_rsa.pub")}"
  }

  scheduling_policy {
    preemptible = true
  }

  labels = var.labels
}

resource "yandex_compute_instance" "prom01" {
  name = "prom01"
  hostname = "prom01"
  platform_id = "standard-v3"

  resources {
    cores  = var.vm_size.cores
    memory = var.vm_size.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.disk_size
      type = "network-ssd"
    }
  }

  network_interface {
    index     = 0
    subnet_id = yandex_vpc_subnet.zadachnick-logs.id
    nat = true
    security_group_ids = [ yandex_vpc_security_group.zadachnick-logs.id ]
  }


  metadata = {
    ssh-keys = "m1xxos:${file("~/.ssh/id_rsa.pub")}"
  }

  scheduling_policy {
    preemptible = true
  }

  labels = var.labels
}
