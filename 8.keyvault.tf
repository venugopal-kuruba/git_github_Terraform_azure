# the crentails it will get from this line of data to keyvault.

data = "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "devsecopsb42-rg1" {
  name                        = "devsecopsb42-rg1"
  location                    = "eastus"
  resource_group_name         = azurerm_resource_group" "devsecopsb42-rg1"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Restore"
      "Recover"
      "Purge"
    ]

    secret_permissions = [
      "Get",
       "Get",
      "List",
      "Set",
      "Delete",
      "Restore"
      "Recover"
      "Purge"

    ]

   
  }
}