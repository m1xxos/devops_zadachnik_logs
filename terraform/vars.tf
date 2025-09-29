variable "labels" {
  type = map(string)
  default = {
    "project" = "zadachnik"
  }
}

variable "image_id" {
  type    = string
  default = "fd8lcu8djvrg7vilobhm"
}

variable "disk_size" {
  type    = number
  default = 20
}

variable "vm_size" {
  type = map(number)
  default = {
    "cores"  = 2
    "memory" = 4
  }
}