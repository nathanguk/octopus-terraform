// Azure Resources to be provisioned

// Azure Region
variable "azurerm_location" {
  default = "#{azurerm_location}"
}

// Azure Resource Group
variable "azurerm_resource_group" {
  default = "#{azurerm_resource_group}"
}

// Azure VNet Address Space
variable "azurerm_vnet_address_space" {
  default = "#{azurerm_vnet_address_space}"
}

// Azure Subnet 1 Address Space 
variable "azurerm_subnet1_address_prefix" {
  default = "#{azurerm_subnet1_address_prefix}"
}

// Azure Subnet 1 Address Space 
variable "azurerm_subnet2_address_prefix" {
  default = "#{azurerm_subnet2_address_prefix}"
}

// Azure Subscription Credentials Variables

// Azure Subscription Id
variable "azurerm_subscription_id" {
  default = "#{azurerm_subscription_id}"
}

// Azure Tenant Id
variable "azurerm_tenant_id" {
  default = "#{azurerm_tenant_id}"
}

// Azure Service Principle Client Id
variable "azurerm_client_id" {
  default = "#{azurerm_client_id}"
}

// Azure Service Principle Secret
variable "azurerm_client_secret" {
  default = "#{azurerm_client_secret}"
}

// F5 Provider Credentials

//F5 API Hostname
variable "f5_api_hostname" {
  default = "#{f5_api_hostname}"
}

//F5 API Username
variable "f5_api_username" {
  default = "#{f5_api_username}"
}

//F5 API Password
variable "f5_api_password" {
  default = "#{f5_api_password}"
}
