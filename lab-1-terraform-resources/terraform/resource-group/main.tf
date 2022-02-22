resource "random_uuid" "uuid" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-devops-tf-${random_uuid.uuid.result}"
  location = var.location
  
provider "azurerm" {
  # Configuration options
  features {}

  tags = {
    environment = "dev"
  }
}
