output "database_management_named_credentials_id" {
  description = "Map of id values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no id are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_management_named_credentials_associated_resource" {
  description = "Map of associated_resource values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no associated_resource are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.associated_resource if v.associated_resource != null && length(v.associated_resource) > 0 }
}
output "database_management_named_credentials_compartment_id" {
  description = "Map of compartment_id values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_management_named_credentials_content" {
  description = "Map of content values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no content are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => one(v.content) if v.content != null && length(v.content) > 0 }
  sensitive   = true
}
output "database_management_named_credentials_defined_tags" {
  description = "Map of defined_tags values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_management_named_credentials_description" {
  description = "Map of description values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no description are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.description if v.description != null && length(v.description) > 0 }
}
output "database_management_named_credentials_freeform_tags" {
  description = "Map of freeform_tags values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_management_named_credentials_lifecycle_details" {
  description = "Map of lifecycle_details values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "database_management_named_credentials_name" {
  description = "Map of name values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no name are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.name if v.name != null && length(v.name) > 0 }
}
output "database_management_named_credentials_scope" {
  description = "Map of scope values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no scope are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "database_management_named_credentials_state" {
  description = "Map of state values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no state are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_management_named_credentials_system_tags" {
  description = "Map of system_tags values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no system_tags are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "database_management_named_credentials_time_created" {
  description = "Map of time_created values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no time_created are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "database_management_named_credentials_time_updated" {
  description = "Map of time_updated values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no time_updated are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "database_management_named_credentials_type" {
  description = "Map of type values across all database_management_named_credentials, keyed the same as var.database_management_named_credentials except keys with no type are omitted"
  value       = { for k, v in oci_database_management_named_credential.database_management_named_credentials : k => v.type if v.type != null && length(v.type) > 0 }
}

