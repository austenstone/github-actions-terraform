terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
  # Authentication via OIDC using environment variables:
  # ARM_CLIENT_ID, ARM_TENANT_ID, ARM_SUBSCRIPTION_ID, ARM_USE_OIDC
}
# Add a user to the organization
#https://azure.microsoft.com/en-us/products/app-service/static
