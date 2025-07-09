module "resource_groups" {
      source         = "./modules/resource_group"
      network_rg_name = "network-rg-${var.humber_id}"
      linux_rg_name  = "linux-rg-${var.humber_id}"
      windows_rg_name = "windows-rg-${var.humber_id}"
      location       = var.location
    }

    module "networking" {
      source         = "./modules/network"
      humber_id      = var.humber_id
      location       = var.location
      network_rg_name = module.resource_groups.network_rg_name
      depends_on     = [module.resource_groups]
    }

    module "common" {
      source         = "./modules/common"
      humber_id      = var.humber_id
      location       = var.location
      network_rg_name = module.resource_groups.network_rg_name
      depends_on     = [module.resource_groups]
    }

    module "linux_vms" {
      source         = "./modules/vmlinux"
      humber_id      = var.humber_id
      location       = var.location
      linux_rg_name  = module.resource_groups.linux_rg_name
      subnet_id      = module.networking.subnet1_id
      sa_name        = module.common.sa_name
      depends_on     = [module.networking, module.common]
    }

    module "windows_vms" {
      source         = "./modules/vmwindows"
      humber_id      = var.humber_id
      location       = var.location
      windows_rg_name = module.resource_groups.windows_rg_name
      subnet_id      = module.networking.subnet2_id
      sa_name        = module.common.sa_name
      depends_on     = [module.networking, module.common]
    }

    variable "humber_id" {
      description = "Humber student ID"
      type        = string
      default     = "n01743943"
    }

    variable "location" {
      description = "Azure region"
      type        = string
      default     = "canadacentral"
    }
