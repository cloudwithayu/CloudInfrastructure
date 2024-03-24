# Module to create Azure Virtual Network via Terraform
# Date : 10 Dec 2023

resource "azurerm_virtual_network" "azVNET" {
  name                = var.azVNETName
  location            = azurerm_resource_group.azRG.location
  resource_group_name = azurerm_resource_group.azRG.name
  address_space       = ["10.10.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "SUBNET-Private"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "SUBNET-Public"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.example.id
  }

  tags = {
    environment = "Production"
  }
}