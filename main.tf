resource "github_repository_custom_property" "repository_custom_properties" {
  for_each = var.repository_custom_properties

  property_name  = each.value.property_name
  property_type  = each.value.property_type
  property_value = each.value.property_value
  repository     = each.value.repository
}

