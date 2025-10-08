data "azurerm_resource_group" "example" {
  name = "project-setup-1"
}

output "rg" {
  value = data.azurerm_resource_group.example
}

provider "azurerm" {
  features {}
  subscription_id = "52cd5f2c-0d28-4429-b80d-950089f20b98"
}