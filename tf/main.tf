terraform {
  required_providers {
    azurerm = {
      source="hashicorp/azurerm"
      version="=2.65.0"
    }
    random = {
      source="hashicorp/random"
      version="=3.1.0"
    }
  }
}

provider "azurerm" {
  features {
  }
}

resource "random_pet" "sg" {}

output "random_pet" {
  value = random_pet.sg.id
}