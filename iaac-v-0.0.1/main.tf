terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.5.2"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

resource "linode_instance" "virtual_machine" {
  count       = 4
  label       = "kubernetes-node-${count.index}"
  group       = "Terraform"
  region      = "ap-south"
  type        = "g4-standard-4"
  image       = "linode/ubuntu24.04"
  root_pass   = var.root_password
  tags        = ["terraform"]
  private_ip  = false
  backups_enabled = false
}

resource "linode_volume" "block_storage" {
  count       = 4
  label       = "kubernetes-node-storage-${count.index}"
  region      = "ap-south"
  size        = 20
}
