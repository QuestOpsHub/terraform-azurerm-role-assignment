# Azure Role Assignment Terraform Module

Terraform module to assign a specified Role to a given Principal (User or Group).

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.role_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description for this Role Assignment. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | (Required) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_role_definition_id"></a> [role\_definition\_id](#input\_role\_definition\_id) | (Optional) The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with role\_definition\_name. | `string` | `null` | no |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | (Optional) The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with role\_definition\_id. | `string` | `null` | no |
| <a name="input_scope"></a> [scope](#input\_scope) | (Required) The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM, or /providers/Microsoft.Management/managementGroups/myMG. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Role Assignment ID. |
