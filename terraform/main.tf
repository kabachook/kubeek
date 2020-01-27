module "masters" {
  source = "./modules/masters"

  master_type  = "DEV1-S"
  master_count = 1
  image        = "ubuntu-bionic"
}

module "nodes" {
  source = "./modules/nodes"

  node_type = "DEV1-S"
  node_count = 1
  image = "ubuntu-bionic"
}