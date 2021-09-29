provider "azurerm" {
  version = "~>2.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "smcp-terraform"
    storage_account_name = "smcpterraform"
    container_name       = "github-terrafrom"
    key                  = "terraformgithubexample.tfstate"
  }
}

#Create Resource Group
resource "azurerm_resource_group" "terraform-github-action" {
  name     = "github-actions"
  location = "eastus2"
}

