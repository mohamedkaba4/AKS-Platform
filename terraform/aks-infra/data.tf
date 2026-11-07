data "azurerm_client_config" "current" {}

data "azurerm_subnet" "aks_system" {
  name                 = var.aks_system_subnet_name
  virtual_network_name = var.aks_vnet_name
  resource_group_name  = var.aks_network_resource_group_name
}

data "azurerm_subnet" "aks_user" {
  name                 = var.aks_user_subnet_name
  virtual_network_name = var.aks_vnet_name
  resource_group_name  = var.aks_network_resource_group_name
}
