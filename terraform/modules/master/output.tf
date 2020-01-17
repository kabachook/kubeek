output "master_addresses" {
    description = "Kubernetes Masters IPs"
    value = "${scaleway_instance_ip.public_ips.0.address}"
}
