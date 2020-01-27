output "nodes_addresses" {
    description = "Kubernetes Nodes' IPs"
    value = "${scaleway_instance_ip.nodes_ips}"
}
