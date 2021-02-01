terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.45.1"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  resource_group_name = "rg-${var.environment}-${var.location}-${var.name}"
}

resource "azurerm_resource_group" "this" {
  name     = local.resource_group_name
  location = var.location_long
}