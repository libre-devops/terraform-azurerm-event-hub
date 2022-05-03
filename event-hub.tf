resource "azurerm_eventhub" "evhub" {
  name                = var.event_hub_name
  namespace_name      = var.namespace_name
  resource_group_name = var.rg_name
  partition_count     = var.settings.partition_count
  message_retention   = var.settings.message_retention
  status              = try(var.settings.status, null)

  dynamic "capture_description" {
    for_each = try(var.settings.capture_description, false) == false ? [] : [1]
    content {
      enabled             = var.settings.capture_description.enabled
      encoding            = var.settings.capture_description.encoding
      interval_in_seconds = try(var.settings.capture_description.interval_in_seconds, null)
      size_limit_in_bytes = try(var.settings.capture_description.size_limit_in_bytes, null)
      skip_empty_archives = try(var.settings.capture_description.skip_empty_archives, null)

      dynamic "destination" {
        for_each = try(var.settings.capture_description.destination, false) == false ? [] : [1]
        content {
          name                = var.settings.capture_description.destination.name
          archive_name_format = var.settings.capture_description.destination.archive_name_format
          blob_container_name = var.settings.capture_description.destination.blob_container_name
          storage_account_id  = var.storage_account_id
        }
      }
    }
  }
}