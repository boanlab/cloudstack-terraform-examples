# CloudStack Terraform Examples

This repository contains Terraform examples for deploying Virtual Machines (VMs) and networking resources on **Apache CloudStack**.
It includes multiple deployment scenarios ranging from simple shared networks to isolated networks and fully managed VPC environments.

### Overview
- vm-in-shared-nw → Deploy VMs in a shared network
- vm-with-isolated-network → Deploy VMs in a dedicated isolated network
- vpc-wth-service → Build a VPC with multiple service tiers and public access

### Prerequisites
- Terraform ≥ 1.5.x
- Apache CloudStack ≥ 4.18.x (DKU SOLID cloud is currently 4.19.2, September 2025)
- CloudStack API Key & Secret Key
- Recommended OS: 24.04

### Usage
- change directory to each scenario, and run 
```bash
cd <scenario>
terraform init
terraform apply
```
- to destroy all of the deployed resources
```bash
terraform destroy
```

