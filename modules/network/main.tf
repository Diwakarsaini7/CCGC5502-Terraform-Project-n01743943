resource "azurerm_virtual_network" "vnet" {
     name                = "network-vnet-${var.humber_id}"
     address_space       = ["10.0.0.0/16"]
     location            = var.location
     resource_group_name = var.network_rg_name
     tags = {
       Assignment     = "CCGC 5502 Automation Assignment"
       Name           = "Mohan Sai"
       ExpirationDate = "2024-12-31"
       Environment    = "Learning"
     }
   }

   resource "azurerm_subnet" "subnet1" {
     name                 = "subnet1-${var.humber_id}"
     resource_group_name  = var.network_rg_name
     virtual_network_name = azurerm_virtual_network.vnet.name
     address_prefixes     = ["10.0.1.0/24"]
   }

   resource "azurerm_subnet" "subnet2" {
     name                 = "subnet2-${var.humber_id}"
     resource_group_name  = var.network_rg_name
     virtual_network_name = azurerm_virtual_network.vnet.name
     address_prefixes     = ["10.0.2.0/24"]
   }

   resource "azurerm_network_security_group" "nsg1" {
     name                = "network-nsg1-${var.humber_id}"
     location            = var.location
     resource_group_name = var.network_rg_name
     tags = {
       Assignment     = "CCGC 5502 Automation Assignment"
       Name           = "Mohan Sai"
       ExpirationDate = "2024-12-31"
       Environment    = "Learning"
     }
   }

   resource "azurerm_network_security_group" "nsg2" {
     name                = "network-nsg2-${var.humber_id}"
     location            = var.location
     resource_group_name = var.network_rg_name
     tags = {
       Assignment     = "CCGC 5502 Automation Assignment"
       Name           = "Mohan Sai"
       ExpirationDate = "2024-12-31"
       Environment    = "Learning"
     }
   }

   resource "azurerm_network_security_rule" "nsg1_rule1" {
     name                        = "allow-ssh"
     priority                    = 100
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_range           = "*"
     destination_port_range      = "22"
     source_address_prefix       = "*"
     destination_address_prefix  = "*"
     resource_group_name         = var.network_rg_name
     network_security_group_name = azurerm_network_security_group.nsg1.name
   }

   resource "azurerm_network_security_rule" "nsg1_rule2" {
     name                        = "allow-rdp"
     priority                    = 110
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_range           = "*"
     destination_port_range      = "3389"
     source_address_prefix       = "*"
     destination_address_prefix  = "*"
     resource_group_name         = var.network_rg_name
     network_security_group_name = azurerm_network_security_group.nsg1.name
   }

   resource "azurerm_network_security_rule" "nsg1_rule3" {
     name                        = "allow-winrm"
     priority                    = 120
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_range           = "*"
     destination_port_range      = "5985"
     source_address_prefix       = "*"
     destination_address_prefix  = "*"
     resource_group_name         = var.network_rg_name
     network_security_group_name = azurerm_network_security_group.nsg1.name
   }

   resource "azurerm_network_security_rule" "nsg1_rule4" {
     name                        = "allow-http"
     priority                    = 130
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_range           = "*"
     destination_port_range      = "80"
     source_address_prefix       = "*"
     destination_address_prefix  = "*"
     resource_group_name         = var.network_rg_name
     network_security_group_name = azurerm_network_security_group.nsg1.name
   }

   resource "azurerm_subnet_network_security_group_association" "nsg1_subnet1" {
     subnet_id                 = azurerm_subnet.subnet1.id
     network_security_group_id = azurerm_network_security_group.nsg1.id
   }

   resource "azurerm_subnet_network_security_group_association" "nsg2_subnet2" {
     subnet_id                 = azurerm_subnet.subnet2.id
     network_security_group_id = azurerm_network_security_group.nsg2.id
   }
