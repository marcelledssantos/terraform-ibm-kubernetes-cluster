terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.56.0"
    }
  }
}

provider "ibm" {
  region = var.region
}

resource "ibm_container_vpc_cluster" "kube_cluster" {
  name              = var.cluster_name
  vpc_id            = var.vpc_id
  flavor            = var.flavor
  worker_count      = 2
  resource_group_id = var.resource_group_id
  kube_version      = var.kube_version
}
