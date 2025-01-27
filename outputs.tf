#------------------
# Role Assignments
#------------------
output "id" {
  description = "The Role Assignment ID."
  value       = azurerm_role_assignment.role_assignment.id
}