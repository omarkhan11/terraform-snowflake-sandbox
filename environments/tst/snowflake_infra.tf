module "workspace_database" {
  source     = "../../modules/snowflake_db_template"
  env_prefix = "tst"
  warehouse_size = "XSMALL"
}
