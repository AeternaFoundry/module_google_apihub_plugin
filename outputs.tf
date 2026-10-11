output "apihub_plugins_id" {
  description = "Map of id values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no id are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apihub_plugins_actions_config" {
  description = "Map of actions_config values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no actions_config are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.actions_config if v.actions_config != null && length(v.actions_config) > 0 }
}
output "apihub_plugins_config_template" {
  description = "Map of config_template values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no config_template are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => one(v.config_template) if v.config_template != null && length(v.config_template) > 0 }
}
output "apihub_plugins_create_time" {
  description = "Map of create_time values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no create_time are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "apihub_plugins_deletion_policy" {
  description = "Map of deletion_policy values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apihub_plugins_description" {
  description = "Map of description values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no description are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apihub_plugins_display_name" {
  description = "Map of display_name values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no display_name are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apihub_plugins_documentation" {
  description = "Map of documentation values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no documentation are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => one(v.documentation) if v.documentation != null && length(v.documentation) > 0 }
}
output "apihub_plugins_hosting_service" {
  description = "Map of hosting_service values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no hosting_service are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => one(v.hosting_service) if v.hosting_service != null && length(v.hosting_service) > 0 }
}
output "apihub_plugins_location" {
  description = "Map of location values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no location are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.location if v.location != null && length(v.location) > 0 }
}
output "apihub_plugins_name" {
  description = "Map of name values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no name are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apihub_plugins_ownership_type" {
  description = "Map of ownership_type values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no ownership_type are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.ownership_type if v.ownership_type != null && length(v.ownership_type) > 0 }
}
output "apihub_plugins_plugin_category" {
  description = "Map of plugin_category values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no plugin_category are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.plugin_category if v.plugin_category != null && length(v.plugin_category) > 0 }
}
output "apihub_plugins_plugin_id" {
  description = "Map of plugin_id values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no plugin_id are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.plugin_id if v.plugin_id != null && length(v.plugin_id) > 0 }
}
output "apihub_plugins_project" {
  description = "Map of project values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no project are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.project if v.project != null && length(v.project) > 0 }
}
output "apihub_plugins_state" {
  description = "Map of state values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no state are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apihub_plugins_update_time" {
  description = "Map of update_time values across all apihub_plugins, keyed the same as var.apihub_plugins except keys with no update_time are omitted"
  value       = { for k, v in google_apihub_plugin.apihub_plugins : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

