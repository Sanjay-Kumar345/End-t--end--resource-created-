resource "azurerm_resource_group" "rgs" {
  for_each = var.rg-name
  name     = each.value.name
  location = each.value.location

}
resource "azurerm_storage_account" "strg" {
  for_each = var.strg-name
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  access_tier = each.value.access_tier
  account_tier = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  
}