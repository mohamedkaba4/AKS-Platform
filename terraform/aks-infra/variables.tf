# General

variable "subscription_id" {
  description = "Azure subscription hosting the shared AKS platform."
  type        = string
}

variable "location" {
  description = "Azure region for platform resources."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing AKS platform resources."
  type        = string
}

variable "tags" {
  description = "Common resource tags."
  type        = map(string)
}

# AKS

variable "aks_cluster_name" {
  description = "Shared AKS platform cluster name."
  type        = string
}

variable "kubernetes_version" {
  description = "Approved AKS Kubernetes version."
  type        = string
}

# Azure Landing Zone Networking

variable "aks_network_resource_group_name" {
  description = "ALZ-managed resource group containing the AKS spoke VNet."
  type        = string
}

variable "aks_vnet_name" {
  description = "ALZ-managed VNet hosting the AKS platform."
  type        = string
}

variable "aks_system_subnet_name" {
  description = "Subnet dedicated to the AKS system node pool."
  type        = string
}

variable "aks_user_subnet_name" {
  description = "Subnet dedicated to AKS application node pools."
  type        = string
}

# System Node Pool

variable "system_node_vm_size" {
  description = "VM SKU for the system node pool."
  type        = string
}

variable "system_node_min_count" {
  description = "Minimum number of system nodes."
  type        = number
}

variable "system_node_max_count" {
  description = "Maximum number of system nodes."
  type        = number
}

# Identity and Access

variable "aks_admin_group_object_id" {
  description = "Microsoft Entra group granted AKS RBAC Cluster Admin."
  type        = string
}

variable "management_subscription_id" {
  description = "Azure subscription hosting centralized management resources."
  type        = string
}

variable "user_node_vm_size" {
  description = "VM SKU for application nodes."
  type        = string
}

variable "user_node_min_count" {
  description = "Minimum application node count."
  type        = number
}

variable "user_node_max_count" {
  description = "Maximum application node count."
  type        = number
}
