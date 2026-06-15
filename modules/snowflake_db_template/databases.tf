resource "snowflake_database" "env_db" {
  # String interpolation automatically builds uppercase standard naming
  name    = "${upper(var.env_prefix)}_DB"
  comment = "Managed by Terraform - Centralized database instance for the ${var.env_prefix} track."
}