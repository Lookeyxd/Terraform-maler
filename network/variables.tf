variable "vnet_name" {
  type        = string
  description = "Navnet på det virtuelle nettverket"
}

variable "location" {
  type        = string
  description = "Azure-regionen"
}

variable "resource_group_name" {
  type        = string
  description = "Navnet på ressursgruppen"
}

variable "address_space" {
  type        = list(string)
  description = "Adresseområde for det virtuelle nettverket"
}

variable "web_subnet_name" {
  type        = string
  description = "Navnet på subnettet for web-server"
}

variable "web_subnet_prefix" {
  type        = string
  description = "Adresseområde for subnettet for web-server"
}

variable "db_subnet_name" {
  type        = string
  description = "Navnet på subnettet for database-server"
}

variable "db_subnet_prefix" {
  type        = string
  description = "Adresseområde for subnettet for database-server"
}
