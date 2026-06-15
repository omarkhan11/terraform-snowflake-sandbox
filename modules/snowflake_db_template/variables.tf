variable "env_prefix" {
  type        = string
  description = "The target tier prefix string (dev, tst, prod)"
}

variable "warehouse_size" {
  type        = string
  description = "The compute size of the Snowflake virtual warehouse (XSMALL, SMALL, MEDIUM, etc.)"
  default     = "XSMALL" # Safe default to save money!
}

variable "data_science_wh_size" {
  type        = string
  default     = "XSMALL" 
  description = "The compute size for the data science warehouse"
}