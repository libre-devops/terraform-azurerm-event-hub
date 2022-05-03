variable "event_hub_name" {
  description = "Name of the Event Hub"
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "namespace_name" {
  description = "Name of the Event Hub Namespace."
  type        = string
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "settings" {
  description = "Map used to contain all dynamic settings"
  type        = map(any)
  default     = {}
}

variable "storage_account_id" {
  description = "Identifier of the storage account ID to be used."
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."
  default = {
    source = "terraform"
  }
}
