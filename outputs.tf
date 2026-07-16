output "repository_custom_properties_id" {
  description = "Map of id values across all repository_custom_properties, keyed the same as var.repository_custom_properties"
  value       = { for k, v in github_repository_custom_property.repository_custom_properties : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_custom_properties_property_name" {
  description = "Map of property_name values across all repository_custom_properties, keyed the same as var.repository_custom_properties"
  value       = { for k, v in github_repository_custom_property.repository_custom_properties : k => v.property_name if v.property_name != null && length(v.property_name) > 0 }
}
output "repository_custom_properties_property_type" {
  description = "Map of property_type values across all repository_custom_properties, keyed the same as var.repository_custom_properties"
  value       = { for k, v in github_repository_custom_property.repository_custom_properties : k => v.property_type if v.property_type != null && length(v.property_type) > 0 }
}
output "repository_custom_properties_property_value" {
  description = "Map of property_value values across all repository_custom_properties, keyed the same as var.repository_custom_properties"
  value       = { for k, v in github_repository_custom_property.repository_custom_properties : k => v.property_value if v.property_value != null && length(v.property_value) > 0 }
}
output "repository_custom_properties_repository" {
  description = "Map of repository values across all repository_custom_properties, keyed the same as var.repository_custom_properties"
  value       = { for k, v in github_repository_custom_property.repository_custom_properties : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "repository_custom_properties_repository_id" {
  description = "Map of repository_id values across all repository_custom_properties, keyed the same as var.repository_custom_properties"
  value       = { for k, v in github_repository_custom_property.repository_custom_properties : k => v.repository_id if v.repository_id != null }
}

