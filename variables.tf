#------------------
# Role Assignments
#------------------
variable "scope" {
  description = "(Required) The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM, or /providers/Microsoft.Management/managementGroups/myMG. Changing this forces a new resource to be created."
  type        = string
}

variable "role_definition_id" {
  description = "(Optional) The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with role_definition_name."
  type        = string
  default     = null
}

variable "role_definition_name" {
  description = "(Optional) The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with role_definition_id."
  type        = string
  default     = null
}

variable "principal_id" {
  description = "(Required) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created."
  type        = string
}

variable "description" {
  description = "(Optional) The description for this Role Assignment. Changing this forces a new resource to be created."
  type        = string
  default     = null
}