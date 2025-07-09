terraform {
       backend "azurerm" {
         resource_group_name  = "terraform-rg-n01743943"
         storage_account_name = "stterraformn01743943"
         container_name       = "tfstate"
         key                  = "terraform.tfstate"
         access_key           = "var.storage_account_key"
       }
     }
