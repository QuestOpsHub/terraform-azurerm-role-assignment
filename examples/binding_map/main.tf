#------------------
# Role Assignments
#------------------
locals {
  role_bindings = flatten([
    for role, bindings in local.binding_lists : [
      for binding in bindings : {
        principal_id         = binding.principal_id
        scope                = binding.scope
        role_definition_name = role
        description          = try(binding.description, null)
      }
    ]
  ])
  binding_map = {
    for binding in local.role_bindings :
    format("%s%s%s-%s", binding.scope, binding.principal_id, binding.role_definition_name, coalesce(binding.description, "null")) => binding
  }
}

module "role_assignments" {
  source = "git::https://github.com/QuestOpsHub/terraform-azurerm-role-assignment.git?ref=v1.0.0"

  for_each             = local.binding_map
  scope                = each.value.scope
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id
  description          = lookup(each.value, "description", null)
}