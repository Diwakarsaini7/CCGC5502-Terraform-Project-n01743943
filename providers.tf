terraform {
     required_providers {
       azurerm = {
         source  = "hashicorp/azurerm"
         version = "~> 3.104.0"
       }
       null = {
         source  = "hashicorp/null"
         version = "~> 3.2.0"
       }
     }
   }

   provider "azurerm" {
     features {}
   }
