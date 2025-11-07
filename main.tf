# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-github-actions-terraform"
  location = "East US"
}

# Azure Static Web App
resource "azurerm_static_web_app" "swa" {
  name                = "swa-github-actions-terraform"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_tier            = "Free"
  sku_size            = "Free"
}

# Output the deployment token (sensitive)
output "static_web_app_api_key" {
  value     = azurerm_static_web_app.swa.api_key
  sensitive = true
}

output "static_web_app_url" {
  value = azurerm_static_web_app.swa.default_host_name
}

output "static_web_app_id" {
  value = azurerm_static_web_app.swa.id
}
