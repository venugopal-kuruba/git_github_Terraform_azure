resource "azurerm_network_security_group" "nsg1" {
  name                = ${azurerm_resource_group.devsecopsb42-rg1.name}-NSG
  location            = azurerm_resource_group.devsecopsb42-rg1.name.location
  resource_group_name = azurerm_resource_group.devsecopsb42-rg1.name


  tags = {
    env = var.env
    batch = var.batch
  }
}
