variable "humber_id" {
  description = "Humber student ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "linux_rg_name" {
  description = "Name of the Linux resource group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for NICs"
  type        = string
}

variable "vm_names" {
  description = "Map of VM names"
  type        = map(string)
  default     = {
    "vm1" = "vm1"
    "vm2" = "vm2"
    "vm3" = "vm3"
  }
}

variable "sa_name" {
  description = "Name of the storage account for boot diagnostics"
  type        = string
}
