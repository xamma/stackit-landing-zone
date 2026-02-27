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
| [stackit_authorization_project_role_assignment.assignments](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/authorization_project_role_assignment) | resource |
| [stackit_git.git](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/git) | resource |
| [stackit_resourcemanager_project.project](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/resourcemanager_project) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_company_code"></a> [company\_code](#input\_company\_code) | Company code used in resource naming conventions. | `string` | n/a | yes |
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | Name of the company folder to create. | `string` | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Container ID of the root folder or organization under which the company folder will be created. | `string` | n/a | yes |
| <a name="input_owner_email"></a> [owner\_email](#input\_owner\_email) | Email address of the owner for the folders. Required for STACKIT resource manager. | `string` | n/a | yes |
| <a name="input_parent_container_id"></a> [parent\_container\_id](#input\_parent\_container\_id) | Parent container ID (folder or organization) where the project will be created. | `string` | n/a | yes |
| <a name="input_project_code"></a> [project\_code](#input\_project\_code) | Optional project code for the STACKIT project. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the STACKIT project to create. | `string` | n/a | yes |
| <a name="input_allowed_network_ranges"></a> [allowed\_network\_ranges](#input\_allowed\_network\_ranges) | List of allowed network ranges for Git instance ACL. | `list(string)` | <pre>[<br/>  "0.0.0.0/0"<br/>]</pre> | no |
| <a name="input_env"></a> [env](#input\_env) | Environment identifier (e.g., dev, staging, prod) used in resource naming conventions. | `string` | `"dev"` | no |
| <a name="input_git_flavor"></a> [git\_flavor](#input\_git\_flavor) | The flavor of the Git instance. | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Additional labels to apply to all folders. | `map(string)` | `{}` | no |
| <a name="input_network_area_id"></a> [network\_area\_id](#input\_network\_area\_id) | Network Area ID to deploy resources into. Required if network is enabled. | `string` | `null` | no |
| <a name="input_organization_auditors"></a> [organization\_auditors](#input\_organization\_auditors) | List of organization role assignments for organization auditors. | `list(string)` | `[]` | no |
| <a name="input_organization_owners"></a> [organization\_owners](#input\_organization\_owners) | List of organization role assignments for organization owners. | `list(string)` | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | STACKIT region for regional resources. | `string` | `"eu01"` | no |
| <a name="input_role_assignments"></a> [role\_assignments](#input\_role\_assignments) | List of role assignments for the project. Subject can be a user email or service account email. | <pre>list(object({<br/>    role    = string<br/>    subject = string<br/>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_container_id"></a> [project\_container\_id](#output\_project\_container\_id) | The container ID of the created STACKIT project. |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The project ID of the created STACKIT project. |
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | The name of the created STACKIT project. |
<!-- END_TF_DOCS -->