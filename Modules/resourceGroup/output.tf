output "instance_name" {
  value = azurerm_resource_group.azRG.name
}

output "instance_location" {
    value = azurerm_resource_group.azRG.location
  
}