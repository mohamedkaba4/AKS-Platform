resource "azurerm_role_assignment" "aks_user_subnet_network_contributor" {
  scope                = data.azurerm_subnet.aks_user.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_user_assigned_identity.platform_aks.principal_id
}

resource "azurerm_kubernetes_cluster_node_pool" "apps" {
  name                  = "apps"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.main.id

  mode                 = "User"
  vm_size              = var.user_node_vm_size
  vnet_subnet_id       = data.azurerm_subnet.aks_user.id
  auto_scaling_enabled = true
  min_count            = var.user_node_min_count
  max_count            = var.user_node_max_count

  upgrade_settings {
    max_surge                     = "10%"
    drain_timeout_in_minutes      = 0
    node_soak_duration_in_minutes = 0
  }
  tags = var.tags

  depends_on = [
    azurerm_role_assignment.aks_user_subnet_network_contributor
  ]
}

