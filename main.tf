terraform {
    required_providers {
      azurerm = {
       source = "hashicorp/azurerm"
       version = "=2.46.0"
      }
    }
}

provider "azurerm" {
    features {}
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
}

terraform {
    required_version = ">=0.12"
}


/*認証基盤*/
variable "subscription_id" {
    default = "5724b903-4538-4a5e-a901-8800185b5788"
}

variable "tenant_id" {
    default = "67acf48f-1398-464d-9961-1b3238bd11a2"
}





resource "azurerm_resource_group""test" {
    name = "resourcegroup"
    location = "Japanwest"
}