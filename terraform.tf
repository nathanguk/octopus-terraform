# Configure Terraform Azure Remote State (This cannot use terraform variables file)
terraform {
  backend "azurerm" {
    resource_group_name  = "#{azurerm_state_resource_group}"
    storage_account_name = "#{azurerm_state_storage_account}"
    container_name       = "#{azurerm_state_storage_container}"
    key                  = "#{azurerm_state_storage_key}"
    arm_subscription_id  = "#{azurerm_subscription_id}"
    arm_client_id        = "#{azurerm_client_id}"
    arm_client_secret    = "#{azurerm_client_secret}"
    arm_tenant_id        = "#{azurerm_tenant_id}"
  }
}

# Configure the Azure Provider
provider "azurerm" {
  subscription_id = "${var.azurerm_subscription_id}"
  client_id       = "${var.azurerm_client_id}"
  client_secret   = "${var.azurerm_client_secret}"
  tenant_id       = "${var.azurerm_tenant_id}"
}

# Create a resource group
resource "azurerm_resource_group" "network" {
  name     = "${var.azurerm_resource_group}"
  location = "${var.azurerm_location}"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "network" {
  name                = "production-network"
  address_space       = ["${var.azurerm_vnet_address_space}"]
  location            = "${azurerm_resource_group.network.location}"
  resource_group_name = "${azurerm_resource_group.network.name}"

  subnet {
    name           = "subnet1"
    address_prefix = "${var.azurerm_subnet1_address_prefix}"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "${var.azurerm_subnet2_address_prefix}"
  }
}

# F5 Provider
provider "bigip" {
  address  = "#{f5_api_hostname}"
  username = "#{f5_api_username}"
  password = "#{f5_api_password}"
}

resource "bigip_net_route" "route1" {
  name    = "external-route"
  network = "10.10.10.0/24"
  gw      = "10.0.0.245"
}
