variable "subscription_id" {
  type    = string
  default = null
}
variable "resource_group_name" {
  default = "rg-desarrolloTF"
}

variable "location_name" {
  default = "spaincentral"
}

variable "network_name" {
  default = "vnet1"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "admin_password" {
  type      = string
  sensitive = true
  default   = ""  # Set via terraform apply prompt
}
variable "nombreACR"{
  default = "cp2uniracr2026" 
}