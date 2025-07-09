# CCGC 5502 – Terraform Infrastructure Automation Project

This repository contains the Terraform code for a fully automated Azure infrastructure project, developed as part of the **CCGC 5502 Automation** course at Humber College.

## 👨‍💻 Student Info

- **Name:** Diwakar Saini  
- **Student ID:** N01743943  
- **Project:** Terraform Infrastructure Automation – Lab 06  
- **Instructor:** Professor Asghar Ghori  

---

## 📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using **Terraform** to deploy a highly available, scalable, and modular cloud environment in **Microsoft Azure**. All configurations follow best practices in parameterization, modularization, and backend management.

---

## 🚀 Deployed Azure Resources

The following Azure services were provisioned:

### ✅ Resource Groups

- `linux-rg-n01743943`
- `windows-rg-n01743943`
- `network-rg-n01743943`

### ✅ Networking

- Virtual Network: `network-vnet-n01743943`
- Subnets: `subnet1-n01743943`, `subnet2-n01743943`
- NSG with rules for ports 22, 80, 3389, 5985

### ✅ Virtual Machines

#### Linux VMs (using `for_each` in availability set):
- Hostnames: `n01743943-w-vm1`, `n01743943-w-vm2`
- Public IPs:  
  - `52.237.15.36`  
  - `52.233.17.113`  
- FQDNs:  
  - `n01743943-w-vm1.canadacentral.cloudapp.azure.com`  
  - `n01743943-w-vm2.canadacentral.cloudapp.azure.com`

#### Windows VMs (using `count` in availability set):
- Hostnames: `n01743943-w-vm1`, `n01743943-w-vm2`
- FQDNs with timestamp labels
- No public IPs for security

### ✅ Common Services

- Storage Account: `stdiagn01743943`
- Recovery Services Vault: `recovery-n01743943`
- Log Analytics Workspace: `log-n01743943`

### ✅ Output Sample

Example Terraform output:
```bash
linux_vm_names = ["n01743943-w-vm1", "n01743943-w-vm2"]
linux_public_ip_addresses = ["52.237.15.36", "52.233.17.113"]
windows_vm_names = ["n01743943-w-vm1", "n01743943-w-vm2"]
vnet_name = "network-vnet-n01743943"
rsv_name = "recovery-n01743943"

 
