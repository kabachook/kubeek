variable "master_type" {}
variable "master_count" {}
variable "image" {}

resource "scaleway_instance_ip" "public_ips" {
    count = var.master_count
}

resource "scaleway_instance_server" "masters" {
    count = length(scaleway_instance_ip.public_ips)

    type = var.master_type
    image = var.image
    ip_id = scaleway_instance_ip.public_ips[count.index].id
    enable_dynamic_ip = false
}