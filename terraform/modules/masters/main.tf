variable "master_type" {}
variable "master_count" {}
variable "image" {}

resource "scaleway_instance_ip" "masters_ips" {
    count = var.master_count
}

resource "scaleway_instance_server" "masters" {
    count = length(scaleway_instance_ip.masters_ips)

    type = var.master_type
    image = var.image
    ip_id = scaleway_instance_ip.masters_ips[count.index].id
    enable_dynamic_ip = false
    tags = ["k8s-master"]
}