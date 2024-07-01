resource "azurerm_resource_group" "holipro-rg-9" {
  name     = "holipro9"
  location = "West Europe"
}
resource "azurerm_storage_account" "holipro-st" {
    depends_on = [ azurerm_resource_group.holipro-rg-9 ]
  name                     = "holiprost1"
  resource_group_name      = "holipro9"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
resource "azurerm_storage_container" "holi-cnt-08" {
   depends_on = [ azurerm_storage_account.holipro-st ]
  name                  = "holicntpro1"
  storage_account_name  = "holiprost1"
  container_access_type = "private"
}