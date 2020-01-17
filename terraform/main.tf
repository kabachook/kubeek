module "masters" {
    source = "./modules/master"

    master_type = "DEV1-S"
    master_count = 2
    image = "ubuntu-bionic"
}
