
resource "azurerm_kubernetes_cluster" "azAKS" {
  name                = var.namingToFollow
  location            = var.location
  resource_group_name = var.resourceGroup
  dns_prefix          = var.dns_prefix
  sku_tier            = "Free"

  default_node_pool {
    name       = "poolone"
    node_count = 1
    vm_size    = "Standard_D2_v3"
  }

  identity {
    type = "SystemAssigned"
  }
  tags = {
    Environment = "Sandbox"
  }
}