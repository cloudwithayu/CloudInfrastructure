# Module to create Azure Resource Group via Terraform
# Date : 10 Dec 2023

resource "azurerm_resource_group" "azRG" {
  name     = var.namingToFollow
  location = var.Location
}