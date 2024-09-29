variable "linode_token" {
  description = "Linode API Token"
  type        = string
}

variable "root_password" {
  description = "Root Password for Linode VMs"
  type        = string
  sensitive   = true
}