resource "yandex_vpc_subnet" "zadachnick-logs" {
  name           = "zadachnick-logs"
  network_id     = "enpsqkm6l0ulfarfilvq"
  v4_cidr_blocks = ["10.126.0.0/24"]
  labels         = var.labels
}