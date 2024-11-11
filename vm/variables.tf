variable "vm_name" {
  type        = string
  description = "Navnet på VM-en"
}

variable "location" {
  type        = string
  description = "Azure-regionen"
}

variable "resource_group_name" {
  type        = string
  description = "Navnet på ressursgruppen"
}

variable "subnet_id" {
  type        = string
  description = "ID-en til subnettet VM-en skal være i"
}

variable "vm_size" {
  type        = string
  description = "Størrelsen på VM-en"
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Brukernavn for VM-administratoren"
}

variable "admin_password" {
  type        = string
  description = "Brukernavn for VM-administratoren"
  default     = "Passord123!"
}

