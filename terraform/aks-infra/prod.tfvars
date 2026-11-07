# AKS infrastructure

subscription_id = "2df97227-9b74-448e-8bc9-aa5cb23994ba"

# Shared networking
management_subscription_id = "59b3a0c1-d71e-452f-9950-e28743627a30"

location            = "eastus"
resource_group_name = "rg-mavencrest-platform-prod"
aks_cluster_name    = "aks-mavencrest-platform"
kubernetes_version  = "1.35"

# Network is owned by the Azure Landing Zone workload layer
aks_network_resource_group_name = "rg-network-mavencrest-platform-prod"
aks_vnet_name                   = "vnet-mavencrest-platform-prod"
aks_system_subnet_name          = "snet-aks-system"
aks_admin_group_object_id       = "9c6a7377-3f83-47c8-9375-9886d45ab5fa"

# Production-style system node pool
system_node_vm_size   = "Standard_D4as_v4"
system_node_min_count = 2
system_node_max_count = 3

tags = {
  environment = "prod"
  workload    = "observability"
  managed_by  = "terraform"
  platform    = "mavencrest-platform"
}

aks_user_subnet_name = "snet-aks-user"
# Application Node Pool
user_node_vm_size   = "Standard_D2as_v4"
user_node_min_count = 1
user_node_max_count = 4
