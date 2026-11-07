resource "azurerm_resource_group" "platform" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_user_assigned_identity" "platform_aks" {
  name                = "id-${var.aks_cluster_name}"
  location            = var.location
  resource_group_name = azurerm_resource_group.platform.name
  tags                = var.tags
}
