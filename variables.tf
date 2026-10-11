variable "apihub_plugins" {
  description = <<EOT
Map of apihub_plugins, attributes below
Required:
    - display_name
    - location
    - plugin_id
Optional:
    - deletion_policy
    - description
    - plugin_category
    - project
    - actions_config (block):
        - description (required)
        - display_name (required)
        - id (required)
        - trigger_mode (required)
    - config_template (block):
        - additional_config_template (optional, block):
            - description (optional)
            - enum_options (optional, block):
                - description (optional)
                - display_name (required)
                - id (required)
            - id (required)
            - multi_select_options (optional, block):
                - description (optional)
                - display_name (required)
                - id (required)
            - required (optional)
            - validation_regex (optional)
            - value_type (required)
        - auth_config_template (optional, block):
            - service_account (optional, block):
                - service_account (required)
            - supported_auth_types (required)
    - documentation (block):
        - external_uri (optional)
    - hosting_service (block):
        - service_uri (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    display_name    = string
    location        = string
    plugin_id       = string
    deletion_policy = optional(string)
    description     = optional(string)
    plugin_category = optional(string)
    project         = optional(string)
    actions_config = optional(list(object({
      description  = string
      display_name = string
      id           = string
      trigger_mode = string
    })))
    config_template = optional(object({
      additional_config_template = optional(list(object({
        description = optional(string)
        enum_options = optional(list(object({
          description  = optional(string)
          display_name = string
          id           = string
        })))
        id = string
        multi_select_options = optional(list(object({
          description  = optional(string)
          display_name = string
          id           = string
        })))
        required         = optional(bool)
        validation_regex = optional(string)
        value_type       = string
      })))
      auth_config_template = optional(object({
        service_account = optional(object({
          service_account = string
        }))
        supported_auth_types = list(string)
      }))
    }))
    documentation = optional(object({
      external_uri = optional(string)
    }))
    hosting_service = optional(object({
      service_uri = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

