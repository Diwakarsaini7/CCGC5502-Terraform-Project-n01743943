output "availability_set_name" {
      description = "Name of the availability set"
      value       = azurerm_availability_set.windows_avs.name
    }

    output "vm_names" {
      description = "Names of the Windows virtual machines"
      value       = azurerm_windows_virtual_machine.windows_vm[*].name
    }

    output "private_ip_addresses" {
      description = "Private IP addresses of the Windows VMs"
      value       = azurerm_network_interface.windows_nic[*].private_ip_address
    }

    output "public_ip_addresses" {
      description = "Public IP addresses of the Windows VMs"
      value       = azurerm_public_ip.windows_pip[*].ip_address
    }

    output "fqdns" {
      description = "FQDNs of the Windows VMs"
      value       = azurerm_public_ip.windows_pip[*].fqdn
    }
