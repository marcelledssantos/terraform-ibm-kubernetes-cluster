variable "region" {
  type    = string
  default = "us-south"
}

variable "cluster_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "flavor" {
  type    = string
  default = "bx2.4x16"
}

variable "resource_group_id" {
  type = string
}

variable "kube_version" {
  type    = string
  default = "1.27.9"
}
