output "network_rg_name" {
     description = "Name of the network resource group"
     value       = azurerm_resource_group.network_rg.name
   }

   output "linux_rg_name" {
     description = "Name of the Linux resource group"
     value       = azurerm_resource_group.linux_rg.name
   }

   output "windows_rg_name" {
     description = "Name of the Windows resource group"
     value       = azurerm_resource_group.windows_rg.name
   }
