#------------------
# Role Assignments
#------------------
module "role_assignments" {
  source = "git::https://github.com/QuestOpsHub/terraform-azurerm-role-assignment.git?ref=v1.0.0"

  for_each             = var.role_assignments
  scope                = each.value.scope
  role_definition_id   = lookup(each.value, "role_definition_id", null)
  role_definition_name = lookup(each.value, "role_definition_name", null)
  principal_id         = each.value.principal_id
  description          = lookup(each.value, "description", null)
}