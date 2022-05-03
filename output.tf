output "id" {
  description = "The ID of the EventHub."
  value       = azurerm_eventhub.evhub.id
}

output "name" {
  description = "The name of the EventHub."
  value       = azurerm_eventhub.evhub.name
}

output "partion_ids" {
  description = "The parition IDs"
  value       = azurerm_eventhub.evhub.partition_ids
}

output "namespace_name" {
  description = "The namespace this event hub is part of"
  value       = azurerm_eventhub.evhub.namespace_name
}
