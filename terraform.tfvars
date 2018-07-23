// *** Azure Resources to be provisioned ***

// Azure Region
"azurerm_location" = "#{azurerm_location}"

// Azure Resource Group
"azurerm_resource_group" = "#{azurerm_resource_group}"

// Azure VNet Address Space
"azurerm_vnet_address_space" = "#{azurerm_vnet_address_space}"

// Azure Subnet 1 Address Space 
"azurerm_subnet1_address_prefix" = "#{azurerm_subnet1_address_prefix}"

// Azure Subnet 1 Address Space 
"azurerm_subnet2_address_prefix" = "#{azurerm_subnet2_address_prefix}"

// *** Azure Subscription Credentials Variables ***

// Azure Subscription Id
"azurerm_subscription_id" = "#{azurerm_subscription_id}"

// Azure Tenant Id
"azurerm_tenant_id" = "#{azurerm_tenant_id}"

// Azure Service Principle Client Id
"azurerm_client_id" = "#{azurerm_client_id}"

// Azure Service Principle Secret
"azurerm_client_secret" = "#{azurerm_client_secret}"

// *** F5 Provider Credentials ***

//F5 API Hostname
"f5_api_hostname" = "#{f5_api_hostname}"

//F5 API Username
"f5_api_username" = "#{f5_api_username}"

//F5 API Password
"f5_api_password" = "#{f5_api_password}"
