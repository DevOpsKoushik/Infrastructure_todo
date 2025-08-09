
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "6e2d972f-0c29-493d-bc26-2eaa32b9e4b9"
}

resource "azurerm_resource_group" "rg" {
  name     = "knpipeline1"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
depends_on                = [azurerm_resource_group.rg]
  name                     = "knstac"
  resource_group_name      = "knpipeline1"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
