terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.9.0"
    }
  }
 backend "azurerm" {
    resource_group_name  = "sumesh-storage-rg"
    storage_account_name = "sumeshsan"
    container_name       = "sumeshsancontainer"
    key                  = "terraform.tfstate"
    subscription_id      = "sid"
    client_id            = "client_id"     #appId
    client_secret        = "client_secret" #password
    tenant_id            = "tenant_id"

  }


}
provider "azurerm" {

  subscription_id      = "sid"
  client_id            = "client_id"     #appId
  client_secret        = "client_secret" #password
  tenant_id            = "tenant_id"
  features {}
}