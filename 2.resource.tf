#resource "type_of_resource" "resource_in_terraform" {
#    argument1 = ?
#    argument2 = ?
#}


resource "azurerm_resource_group" "devsecopsb42-rg1" {
  name     = "devsecopsb42-rg1"
  location = "eastus"
  tags = {
    env = "Development"
  }
}

resource "azurerm_resource_group" "devsecopsb42-rg2" {
  name     = "devsecopsb42-rg2"
  location = "westus"
  tags = {
    env = "Development"
  }
}

resource "azurerm_resource_group" "devsecopsb42-rg3" {
  name     = "devsecopsb42-rg3"
  location = "eastus2"
  tags = {
    env = "Development"
  }
}