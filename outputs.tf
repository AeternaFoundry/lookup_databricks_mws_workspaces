output "mws_workspaces_lookup_id" {
  description = "Map of id values across all mws_workspaces_lookup, keyed the same as var.mws_workspaces_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_mws_workspaces.mws_workspaces_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mws_workspaces_lookup_ids" {
  description = "Map of ids values across all mws_workspaces_lookup, keyed the same as var.mws_workspaces_lookup except keys with no ids are omitted"
  value       = { for k, v in data.databricks_mws_workspaces.mws_workspaces_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "mws_workspaces_lookup_provider_config" {
  description = "Map of provider_config values across all mws_workspaces_lookup, keyed the same as var.mws_workspaces_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_mws_workspaces.mws_workspaces_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

