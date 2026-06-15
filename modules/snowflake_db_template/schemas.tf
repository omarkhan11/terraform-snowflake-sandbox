resource "snowflake_schema" "testing" {
  database   = snowflake_database.env_db.name
  name       = "testing"
  comment    = "Managed by Terraform - Postgres schema layer for ${var.env_prefix}."
}