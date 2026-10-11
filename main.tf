data "databricks_mws_workspaces" "mws_workspaces_lookup" {
  for_each = var.mws_workspaces_lookup


  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

