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



