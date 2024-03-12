resource "azurerm_virtual_network" "devops_vnet" {
    for_each = var.vnet_var
  name                = each.key
  address_space       = ["10.0.0.0/16"]
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

