resource "azurerm_storage_container" "Devops_Container" {
  for_each              = var.Con_var
  name                  = each.key
  storage_account_name  = each.value.storage_account_name
  container_access_type = "private"
}


  