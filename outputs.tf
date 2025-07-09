output "network_rg_name" {
      description = "Name of the network resource group"
      value       = module.resource_groups.network_rg_name
    }

    output "linux_rg_name" {
      description = "Name of the Linux resource group"
      value       = module.resource_groups.linux_rg_name
    }

    output "windows_rg_name" {
      description = "Name of the Windows resource group"
      value       = module.resource_groups.windows_rg_name
    }

    output "vnet_name" {
      description = "Name of the virtual network"
      value       = module.networking.vnet_name
    }

    output "subnet1_name" {
      description = "Name of subnet 1"
      value       = module.networking.subnet1_name
    }

    output "subnet2_name" {
      description = "Name of subnet 2"
      value       = module.networking.subnet2_name
    }

    output "law_name" {
      description = "Name of the log analytics workspace"
      value       = module.common.law_name
    }

    output "rsv_name" {
      description = "Name of the recovery services vault"
      value       = module.common.rsv_name
    }

    output "sa_name" {
      description = "Name of the storage account"
      value       = module.common.sa_name
    }

    output "linux_availability_set_name" {
      description = "Name of the Linux availability set"
      value       = module.linux_vms.availability_set_name
    }

    output "linux_vm_names" {
      description = "Names of the Linux virtual machines"
      value       = module.linux_vms.vm_names
    }

    output "linux_private_ip_addresses" {
      description = "Private IP addresses of the Linux VMs"
      value       = module.linux_vms.private_ip_addresses
    }

    output "linux_public_ip_addresses" {
      description = "Public IP addresses of the Linux VMs"
      value       = module.linux_vms.public_ip_addresses
    }

    output "linux_fqdns" {
      description = "FQDNs of the Linux VMs"
      value       = module.linux_vms.fqdns
    }

    output "windows_availability_set_name" {
      description = "Name of the Windows availability set"
      value       = module.windows_vms.availability_set_name
    }

    output "windows_vm_names" {
      description = "Names of the Windows virtual machines"
      value       = module.windows_vms.vm_names
    }

    output "windows_private_ip_addresses" {
      description = "Private IP addresses of the Windows VMs"
      value       = module.windows_vms.private_ip_addresses
    }

    output "windows_public_ip_addresses" {
      description = "Public IP addresses of the Windows VMs"
      value       = module.windows_vms.public_ip_addresses
    }

    output "windows_fqdns" {
      description = "FQDNs of the Windows VMs"
      value       = module.windows_vms.fqdns
    }
