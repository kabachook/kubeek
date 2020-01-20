module "masters" {
  source = "./modules/kube"

  master_type  = "DEV1-S"
  master_count = 1
  image        = "ubuntu-bionic"
}

