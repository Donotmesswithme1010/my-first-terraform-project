resource "azurerm_resource_group" "Devops_RG" {
  for_each = var.rg_var

  name     = each.value.name
  location = each.value.location
}