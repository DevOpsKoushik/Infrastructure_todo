
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "cc9c7c96-1363-4c58-85fc-fba96ba57b88"
}

resource "azurerm_resource_group" "kn1" {
  name     = "kn1"
  location = "East US"
}

resource "azurerm_storage_account" "kn11" {
  name                     = "knstac11"
  resource_group_name      = "kn1"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "kn12" {
  name                     = "knstac12"
  resource_group_name      = "kn1"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
