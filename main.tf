resource "oci_database_management_named_credential" "database_management_named_credentials" {
  for_each = var.database_management_named_credentials

  compartment_id      = each.value.compartment_id
  name                = each.value.name
  scope               = each.value.scope
  type                = each.value.type
  associated_resource = each.value.associated_resource
  defined_tags        = each.value.defined_tags
  description         = each.value.description
  freeform_tags       = each.value.freeform_tags

  content {
    credential_type             = each.value.content.credential_type
    password_secret_access_mode = each.value.content.password_secret_access_mode
    password_secret_id          = each.value.content.password_secret_id
    role                        = each.value.content.role
    user_name                   = each.value.content.user_name
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

