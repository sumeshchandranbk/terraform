
/*
Create Resource Group
*/
resource "azurerm_resource_group" "storage-rg" {
  name     = var.resource_group_name
  location = var.resource_group_location

}
/*
Create Storage Account
*/

resource "azurerm_storage_account" "asa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.storage-rg.name
  location                 = azurerm_resource_group.storage-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "storage-container" {
  name                  = "name"
  storage_account_id    = "account_id"
  container_access_type = "blob"
}

resource "azurerm_resource_group" "dummy-rg" {
  name     = "dummyrg"
  location = "Central India"

}