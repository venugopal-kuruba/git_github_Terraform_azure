resource "azurerm_subnet" "subnets" {
  count = 3 # 0 1 2
  name                 = ${azurerm_resource_group.devsecopsb42-rg1.name}-subnet-${count.index+1}
  resource_group_name  = azurerm_resource_group.devsecopsb42-rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [element(var.vnet_subnets_cidrs,count.index)]
}
