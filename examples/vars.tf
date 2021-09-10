variable "module_config" {
  description = "Configuration options for the Module"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = map(string)
  default     = {}
}