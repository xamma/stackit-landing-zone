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
| [stackit_resourcemanager_project.project](https://registry.terraform.io/providers/stackitcloud/stackit/0.83.0/docs/resources/resourcemanager_project) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_company_code"></a> [company\_code](#input\_company\_code) | Company code used in resource naming conventions. | `string` | n/a | yes |
| <a name="input_parent_container_id"></a> [parent\_container\_id](#input\_parent\_container\_id) | Parent container ID (folder or organization) where the project will be created. | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Additional labels to apply to all folders. | `map(string)` | `{}` | no |
| <a name="input_region"></a> [region](#input\_region) | STACKIT region for regional resources. | `string` | `"eu01"` | no |
| <a name="input_sandboxes"></a> [sandboxes](#input\_sandboxes) | List of sandboxes to create. | <pre>list(object({<br/>    project_name        = string<br/>    owner_emails        = optional(list(string))<br/>    project_owner_email = string<br/>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_projects"></a> [projects](#output\_projects) | The created STACKIT projects with their IDs, container IDs, and names. |
<!-- END_TF_DOCS -->