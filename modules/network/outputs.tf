output "vnet_name" {
      description = "Name of the virtual network"
      value       = azurerm_virtual_network.vnet.name
    }

    output "subnet1_name" {
      description = "Name of subnet 1"
      value       = azurerm_subnet.subnet1.name
    }

    output "subnet1_address_prefixes" {
      description = "Address prefixes of subnet 1"
      value       = azurerm_subnet.subnet1.address_prefixes
    }

    output "subnet1_id" {
      description = "ID of subnet 1"
      value       = azurerm_subnet.subnet1.id
    }

    output "subnet2_name" {
      description = "Name of subnet 2"
      value       = azurerm_subnet.subnet2.name
    }

    output "subnet2_address_prefixes" {
      description = "Address prefixes of subnet 2"
      value       = azurerm_subnet.subnet2.address_prefixes
    }

    output "subnet2_id" {
      description = "ID of subnet 2"
      value       = azurerm_subnet.subnet2.id
    }

    output "nsg1_name" {
      description = "Name of network security group 1"
      value       = azurerm_network_security_group.nsg1.name
    }

    output "nsg2_name" {
      description = "Name of network security group 2"
      value       = azurerm_network_security_group.nsg2.name
    }
