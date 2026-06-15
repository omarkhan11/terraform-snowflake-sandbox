module "workspace_database" {
  source     = "../../modules/snowflake_db_template"
  env_prefix = "prod"
  warehouse_size = "XSMALL"
  data_science_wh_size = "MEDIUM"
} 