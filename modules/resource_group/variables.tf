variable "network_rg_name" {
     description = "Name of the network resource group"
     type        = string
   }

   variable "linux_rg_name" {
     description = "Name of the Linux resource group"
     type        = string
   }

   variable "windows_rg_name" {
     description = "Name of the Windows resource group"
     type        = string
   }

   variable "location" {
     description = "Azure region"
     type        = string
   }
