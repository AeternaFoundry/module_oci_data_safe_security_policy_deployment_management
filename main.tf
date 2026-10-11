resource "oci_data_safe_security_policy_deployment_management" "data_safe_security_policy_deployment_managements" {
  for_each = var.data_safe_security_policy_deployment_managements

  compartment_id     = each.value.compartment_id
  security_policy_id = each.value.security_policy_id
  target_id          = each.value.target_id
  target_type        = each.value.target_type
  defined_tags       = each.value.defined_tags
  deploy_trigger     = each.value.deploy_trigger
  description        = each.value.description
  display_name       = each.value.display_name
  freeform_tags      = each.value.freeform_tags
  refresh_trigger    = each.value.refresh_trigger

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

