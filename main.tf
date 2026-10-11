resource "google_apihub_plugin" "apihub_plugins" {
  for_each = var.apihub_plugins

  display_name    = each.value.display_name
  location        = each.value.location
  plugin_id       = each.value.plugin_id
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  plugin_category = each.value.plugin_category
  project         = each.value.project

  dynamic "actions_config" {
    for_each = each.value.actions_config != null ? each.value.actions_config : []
    content {
      description  = actions_config.value.description
      display_name = actions_config.value.display_name
      id           = actions_config.value.id
      trigger_mode = actions_config.value.trigger_mode
    }
  }

  dynamic "config_template" {
    for_each = each.value.config_template != null ? [each.value.config_template] : []
    content {
      dynamic "additional_config_template" {
        for_each = config_template.value.additional_config_template != null ? config_template.value.additional_config_template : []
        content {
          description = additional_config_template.value.description
          dynamic "enum_options" {
            for_each = additional_config_template.value.enum_options != null ? additional_config_template.value.enum_options : []
            content {
              description  = enum_options.value.description
              display_name = enum_options.value.display_name
              id           = enum_options.value.id
            }
          }
          id = additional_config_template.value.id
          dynamic "multi_select_options" {
            for_each = additional_config_template.value.multi_select_options != null ? additional_config_template.value.multi_select_options : []
            content {
              description  = multi_select_options.value.description
              display_name = multi_select_options.value.display_name
              id           = multi_select_options.value.id
            }
          }
          required         = additional_config_template.value.required
          validation_regex = additional_config_template.value.validation_regex
          value_type       = additional_config_template.value.value_type
        }
      }
      dynamic "auth_config_template" {
        for_each = config_template.value.auth_config_template != null ? [config_template.value.auth_config_template] : []
        content {
          dynamic "service_account" {
            for_each = auth_config_template.value.service_account != null ? [auth_config_template.value.service_account] : []
            content {
              service_account = service_account.value.service_account
            }
          }
          supported_auth_types = auth_config_template.value.supported_auth_types
        }
      }
    }
  }

  dynamic "documentation" {
    for_each = each.value.documentation != null ? [each.value.documentation] : []
    content {
      external_uri = documentation.value.external_uri
    }
  }

  dynamic "hosting_service" {
    for_each = each.value.hosting_service != null ? [each.value.hosting_service] : []
    content {
      service_uri = hosting_service.value.service_uri
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

