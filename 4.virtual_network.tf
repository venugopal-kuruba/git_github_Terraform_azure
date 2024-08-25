resource "azurerm_virtual_network" "vnet1" {
  name = "vnet1"
  #implicit dependency on location and name.
  location            = azurerm_resource_group.devsecopsb42-rg1.location
  resource_group_name = azurerm_resource_group.devsecopsb42-rg1.name
  address_space       = ["10.42.0.0/16"]

  tags = {
    env = "Development"
  }

}
