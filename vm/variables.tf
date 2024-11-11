variable "resource_group_name" {
  description = "Navn på ressursgruppen"
  type        = string
}

variable "location" {
  description = "Plassering for ressursene i Azure"
  type        = string
  default     = "Norway East"
}

variable "vnet_name" {
  description = "Navn på virtual network"
  type        = string
  default     = "myVNet"
}

variable "address_space" {
  description = "Adresseområde for virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Navn på subnett"
  type        = string
  default     = "mySubnet"
}

variable "subnet_address_prefix" {
  description = "Adresseområde for subnett"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_ip_name" {
  description = "Navn på public IP"
  type        = string
  default     = "myPublicIP"
}

variable "nic_name" {
  description = "Navn på network interface"
  type        = string
  default     = "myNIC"
}

variable "vm_name" {
  description = "Navn på virtuell maskin"
  type        = string
  default     = "myVM"
}

variable "vm_size" {
  description = "Størrelse på virtuell maskin"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Administratorbrukernavn for VM"
  type        = string
}

variable "admin_password" {
  description = "Administratorpassord for VM"
  type        = string
  sensitive   = true
}

variable "image_publisher" {
  description = "Bildeleverandør for VM"
  type        = string
  default     = "Debian"
}

variable "image_offer" {
  description = "Image offer for VM"
  type        = string
  default     = "debian-12"
}

variable "image_sku" {
  description = "Image SKU for VM"
  type        = string
  default     = "12"
}

variable "image_version" {
  description = "Bildeversjon for VM"
  type        = string
  default     = "latest"
}
