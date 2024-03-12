resource "azurerm_public_ip" "pips" {
  for_each            = var.pip_var
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method

  tags = {
    environment = "Production"
  }
}
