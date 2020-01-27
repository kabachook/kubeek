output "master_addresses" {
    description = "Kubernetes Masters IPs"
    value = "${scaleway_instance_ip.masters_ips}"
}