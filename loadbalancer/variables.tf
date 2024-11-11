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
  description = "ID-en til subnettet for lastbalansereren"
}
