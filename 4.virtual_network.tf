resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet1"   
  location            = azurerm_resource_group.devsecopsb42-rg1.location
  resource_group_name = azurerm_resource_group.devsecopsb42-rg1.name
  address_space       = [var.vnet_address_space]

  tags = {
    env = var.env
    batch = var.batch
  }

}
