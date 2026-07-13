variable "repository_custom_properties" {
  description = <<EOT
Map of repository_custom_properties, attributes below
Required:
    - property_name
    - property_type
    - property_value
    - repository
EOT

  type = map(object({
    property_name  = string
    property_type  = string
    property_value = set(string)
    repository     = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.repository_custom_properties : (
        alltrue([for x in v.property_value : length(x) > 0])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

