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
  # --- Unconfirmed validation candidates, derived from github_repository_custom_property's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: property_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: property_value[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

