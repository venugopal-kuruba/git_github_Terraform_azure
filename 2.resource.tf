#resource "type_of_resource" "resource_in_terraform" {
#    argument1 = ?
#    argument2 = ?
#}





resource "azurerm_resource_group" "devsecopsb42-rg1" {
  name     = var.rg1_name
  location = var.location
  tags = {
    env = var.env
    batch = var.batch
  }
}
