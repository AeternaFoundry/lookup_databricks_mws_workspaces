variable "mws_workspaces_lookup" {
  description = <<EOT
Map of mws_workspaces_lookup, attributes below
Optional:
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

