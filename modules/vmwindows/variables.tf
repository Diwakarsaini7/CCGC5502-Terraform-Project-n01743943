variable "humber_id" {
  description = "Humber student ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "windows_rg_name" {
  description = "Name of the Windows resource group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for NICs"
  type        = string
}

variable "sa_name" {
  description = "Name of the storage account for boot diagnostics"
  type        = string
}
