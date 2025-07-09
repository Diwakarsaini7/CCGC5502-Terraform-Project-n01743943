resource "azurerm_resource_group" "network_rg" {
     name     = var.network_rg_name
     location = var.location
     tags = {
       Assignment     = "CCGC 5502 Automation Assignment"
       Name           = "Mohan Sai"
       ExpirationDate = "2024-12-31"
       Environment    = "Learning"
     }
   }

   resource "azurerm_resource_group" "linux_rg" {
     name     = var.linux_rg_name
     location = var.location
     tags = {
       Assignment     = "CCGC 5502 Automation Assignment"
       Name           = "Mohan Sai"
       ExpirationDate = "2024-12-31"
       Environment    = "Learning"
     }
   }

   resource "azurerm_resource_group" "windows_rg" {
     name     = var.windows_rg_name
     location = var.location
     tags = {
       Assignment     = "CCGC 5502 Automation Assignment"
       Name           = "Mohan Sai"
       ExpirationDate = "2024-12-31"
       Environment    = "Learning"
     }
   }
