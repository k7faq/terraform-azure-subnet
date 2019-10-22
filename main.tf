resource "azurerm_subnet" "this" {
  name                 = "${replace(var.name, "-", "")}"
  resource_group_name  = "${var.resource_group}"
  virtual_network_name = "${var.virtual_network_name}"
  address_prefix       = "${var.address_prefix}"
  route_table_id       = "${var.route_table_id}"
  service_endpoints    = "${var.service_endpoints}"
}

resource "azurerm_subnet_route_table_association" "this" {
  subnet_id      = "${azurerm_subnet.this.id}"
  route_table_id = "${var.route_table_id}"
  depends_on     = ["azurerm_subnet.this"]
}
