resource "azurerm_availability_set" "linux_avs" {
      name                = "linux-avset-${var.humber_id}"
      location            = var.location
      resource_group_name = var.linux_rg_name
      tags = {
        Assignment     = "CCGC 5502 Automation Assignment"
        Name           = "Mohan Sai"
        ExpirationDate = "2024-12-31"
        Environment    = "Learning"
      }
    }

    resource "azurerm_public_ip" "linux_pip" {
      count               = 2
      name                = "n01743943-l-vm${count.index + 1}-pip"
      location            = var.location
      resource_group_name = var.linux_rg_name
      allocation_method   = "Dynamic"
      sku                 = "Basic"
      domain_name_label   = "n01743943-l-vm${count.index + 1}"
      tags = {
        Assignment     = "CCGC 5502 Automation Assignment"
        Name           = "Mohan Sai"
        ExpirationDate = "2024-12-31"
        Environment    = "Learning"
      }
    }

    resource "azurerm_network_interface" "linux_nic" {
      count               = 2
      name                = "n01743943-l-vm${count.index + 1}-nic"
      location            = var.location
      resource_group_name = var.linux_rg_name
      tags = {
        Assignment     = "CCGC 5502 Automation Assignment"
        Name           = "Mohan Sai"
        ExpirationDate = "2024-12-31"
        Environment    = "Learning"
      }

      ip_configuration {
        name                          = "internal"
        subnet_id                     = var.subnet_id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = azurerm_public_ip.linux_pip[count.index].id
      }
    }

    resource "azurerm_linux_virtual_machine" "linux_vm" {
      count               = 2
      name                = "n01743943-l-vm${count.index + 1}"
      location            = var.location
      resource_group_name = var.linux_rg_name
      size                = "Standard_B1s"
      admin_username      = "adminuser"
      admin_password      = "P@ssw0rd1234!"  # Secure password
      network_interface_ids = [azurerm_network_interface.linux_nic[count.index].id]
      availability_set_id = azurerm_availability_set.linux_avs.id
      tags = {
        Assignment     = "CCGC 5502 Automation Assignment"
        Name           = "Mohan Sai"
        ExpirationDate = "2024-12-31"
        Environment    = "Learning"
      }

      os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
      }

      source_image_reference {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts-gen2"
        version   = "latest"
      }

      boot_diagnostics {
        storage_account_uri = "https://${var.sa_name}.blob.core.windows.net/"
      }
    }
