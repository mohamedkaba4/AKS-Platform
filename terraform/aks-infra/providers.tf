terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id     = var.subscription_id
  storage_use_azuread = true
}

provider "azurerm" {
  alias           = "management"
  subscription_id = "59b3a0c1-d71e-452f-9950-e28743627a30"

  features {}
}