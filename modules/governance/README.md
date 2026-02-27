<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10 |
| <a name="requirement_stackit"></a> [stackit](#requirement\_stackit) | 0.83.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_stackit"></a> [stackit](#provider\_stackit) | 0.83.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [stackit_authorization_folder_role_assignment.landing_zones_corporate_admins](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/authorization_folder_role_assignment) | resource |
| [stackit_authorization_folder_role_assignment.landing_zones_public_admins](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/authorization_folder_role_assignment) | resource |
| [stackit_authorization_folder_role_assignment.platform_admins](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/authorization_folder_role_assignment) | resource |
| [stackit_authorization_organization_role_assignment.auditor](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/authorization_organization_role_assignment) | resource |
| [stackit_authorization_organization_role_assignment.owner](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/authorization_organization_role_assignment) | resource |
| [stackit_resourcemanager_folder.landing_zones_corporate](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/resourcemanager_folder) | resource |
| [stackit_resourcemanager_folder.landing_zones_public](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/resourcemanager_folder) | resource |
| [stackit_resourcemanager_folder.platform](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/resourcemanager_folder) | resource |
| [stackit_resourcemanager_folder.sandbox](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/resourcemanager_folder) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | Name of the company folder to create. | `string` | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Container ID of the root folder or organization under which the company folder will be created. | `string` | n/a | yes |
| <a name="input_owner_email"></a> [owner\_email](#input\_owner\_email) | Email address of the owner for the folders. Required for STACKIT resource manager. | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Additional labels to apply to all folders. | `map(string)` | `{}` | no |
| <a name="input_landing_zone_admins"></a> [landing\_zone\_admins](#input\_landing\_zone\_admins) | List of landing zone administrators with elevated permissions. | `list(string)` | `[]` | no |
| <a name="input_organization_auditors"></a> [organization\_auditors](#input\_organization\_auditors) | List of organization role assignments for organization auditors. | `list(string)` | `[]` | no |
| <a name="input_organization_owners"></a> [organization\_owners](#input\_organization\_owners) | List of organization role assignments for organization owners. | `list(string)` | `[]` | no |
| <a name="input_platform_admins"></a> [platform\_admins](#input\_platform\_admins) | List of platform administrators with elevated permissions. | `list(string)` | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | STACKIT region for regional resources. | `string` | `"eu01"` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_folder_container_ids"></a> [folder\_container\_ids](#output\_folder\_container\_ids) | Map of all folder names to their container IDs for easy reference |
<!-- END_TF_DOCS -->