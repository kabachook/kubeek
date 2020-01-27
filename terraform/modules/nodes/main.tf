variable "node_type" {}
variable "node_count" {}
variable "image" {}

resource "scaleway_instance_ip" "nodes_ips" {
    count = var.node_count
}

resource "scaleway_instance_server" "nodes" {
    count = length(scaleway_instance_ip.nodes_ips)

    type = var.node_type
    image = var.image
    ip_id = scaleway_instance_ip.nodes_ips[count.index].id
    enable_dynamic_ip = false
    tags = ["k8s-node"]
}