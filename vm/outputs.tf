output "vm_id" {
  value = azurerm_linux_virtual_machine.main.id
}

output "public_ip_address" {
  value = azurerm_network_interface.main.private_ip_address
}
