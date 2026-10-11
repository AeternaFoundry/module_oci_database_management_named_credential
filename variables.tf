variable "database_management_named_credentials" {
  description = <<EOT
Map of database_management_named_credentials, attributes below
Required:
    - compartment_id
    - name
    - scope
    - type
    - content (block):
        - credential_type (required)
        - password_secret_access_mode (required)
        - password_secret_id (required)
        - role (required)
        - user_name (required)
Optional:
    - associated_resource
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id      = string
    name                = string
    scope               = string
    type                = string
    associated_resource = optional(string)
    defined_tags        = optional(map(string))
    description         = optional(string)
    freeform_tags       = optional(map(string))
    content = object({
      credential_type             = string
      password_secret_access_mode = string
      password_secret_id          = string
      role                        = string
      user_name                   = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_management_named_credentials : (
        contains([for v in ["BASIC"] : lower(v)], lower(v.content.credential_type))
      )
    ])
    error_message = "must be one of: \"BASIC\""
  }
}

