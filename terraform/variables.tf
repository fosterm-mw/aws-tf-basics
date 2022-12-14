
variable "vpc_name" {
  type = string
  default = "ignite-vpc"
}

variable "region" {
  type    = string
  default = "us-west-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_cidr" {
  type = string
  default = "10.0.0.128/26"
}

variable "private_cidr" {
  type = string
  default = "10.0.0.192/26"
}

variable "private_failover_cidr" {
  type = string
  default = "10.0.2.0/24"
}

variable "cluster_name" {
  type = string
  default = "primary-cluster"
}

variable "cluster_version" {
  type = string
  default = "1.22"
}

variable "use_eks" {
  type = bool
  default = true
}


