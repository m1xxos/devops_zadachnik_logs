resource "yandex_vpc_subnet" "zadachnick-logs" {
  name           = "zadachnick-logs"
  network_id     = var.network_id
  v4_cidr_blocks = ["10.126.0.0/24"]
  labels         = var.labels
}

resource "yandex_vpc_security_group" "zadachnick-logs" {
  name = "zadachnick-logs"
  network_id = var.network_id

  ingress {
    protocol          = "ANY"
    from_port         = 0
    to_port           = 65535
    predefined_target = "self_security_group"
  }

  ingress {
    protocol       = "TCP"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 443
  }

  ingress {
    protocol       = "TCP"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 80
  }

  ingress {
    protocol       = "TCP"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 22
  }

  egress {
    protocol       = "ANY"
    v4_cidr_blocks = ["0.0.0.0/0"]
    from_port      = 0
    to_port        = 65535
  }

  labels = var.labels
}