terraform {
  required_version = "1.9.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "5.42.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "devsecopsb42-rg1"
    storage_account_name = "venugopalazurestatefile"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

}


provider "azurerm" {
  features {}
}

provider "aws" {}
provider "google" {}
