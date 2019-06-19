resource "azurerm_resource_group" "ds" {
  name     = "${var.prefix}-terraform"
  location = var.location
}
