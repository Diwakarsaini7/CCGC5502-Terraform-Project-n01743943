resource "azurerm_log_analytics_workspace" "law" {
      name                = "log-${var.humber_id}"
      location            = var.location
      resource_group_name = var.network_rg_name
      sku                 = "PerGB2018"
      retention_in_days   = 30
      tags = {
        Assignment     = "CCGC 5502 Automation Assignment"
        Name           = "Mohan Sai"
        ExpirationDate = "2024-12-31"
        Environment    = "Learning"
      }
    }

    resource "azurerm_recovery_services_vault" "rsv" {
      name                = "recovery-${var.humber_id}"
      location            = var.location
      resource_group_name = var.network_rg_name
      sku                 = "Standard"
      tags = {
        Assignment     = "CCGC 5502 Automation Assignment"
        Name           = "Mohan Sai"
        ExpirationDate = "2024-12-31"
        Environment    = "Learning"
      }
    }

    resource "azurerm_storage_account" "sa" {
      name                     = "stdiag${var.humber_id}"
      resource_group_name      = var.network_rg_name
      location                 = var.location
      account_tier             = "Standard"
      account_replication_type = "LRS"
      tags = {
        Assignment     = "CCGC 5502 Automation Assignment"
        Name           = "Mohan Sai"
        ExpirationDate = "2024-12-31"
        Environment    = "Learning"
      }
    }
