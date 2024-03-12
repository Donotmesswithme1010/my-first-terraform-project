resource "azurerm_storage_account" "Devops_Storage" {

    for_each = var.strg_var
  name                     = each.key
  resource_group_name      = each.value.resource_group_name
  location                 = each.value. location    
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}