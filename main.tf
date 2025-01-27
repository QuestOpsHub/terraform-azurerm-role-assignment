#------------------
# Role Assignments
#------------------
resource "azurerm_role_assignment" "role_assignment" {
  scope                = var.scope
  role_definition_id   = try(var.role_definition_id, null)
  role_definition_name = try(var.role_definition_name, null)
  principal_id         = var.principal_id
  description          = try(var.description, null)
}