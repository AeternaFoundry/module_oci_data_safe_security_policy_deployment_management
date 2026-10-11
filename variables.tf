variable "data_safe_security_policy_deployment_managements" {
  description = <<EOT
Map of data_safe_security_policy_deployment_managements, attributes below
Required:
    - compartment_id
    - security_policy_id
    - target_id
    - target_type
Optional:
    - defined_tags
    - deploy_trigger
    - description
    - display_name
    - freeform_tags
    - refresh_trigger
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id     = string
    security_policy_id = string
    target_id          = string
    target_type        = string
    defined_tags       = optional(map(string))
    deploy_trigger     = optional(number)
    description        = optional(string)
    display_name       = optional(string)
    freeform_tags      = optional(map(string))
    refresh_trigger    = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

