terraform {
  backend "azurerm" {
    resource_group_name  = "project-setup-1"
    storage_account_name = "katari"
    container_name       = "tfstates"
    key                  = "example.tfstate"
  }
}

output "test" {
  value = "Hello"
}