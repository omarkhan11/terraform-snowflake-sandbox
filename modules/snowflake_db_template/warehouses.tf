resource "snowflake_warehouse" "env_wh" {
  name           = "${upper(var.env_prefix)}_WH"
  comment        = "Managed by Terraform - Compute warehouse cluster for ${var.env_prefix}."
  warehouse_size = var.warehouse_size

  auto_suspend   = 60   # Automatically shuts down after 1 minute of silence to save money!
  auto_resume    = true # Wakes up automatically when a query hits it
}

resource "snowflake_warehouse" "data_science_wh" {
  name           = "${upper(var.env_prefix)}_DATA_SCIENCE_WH"
  comment        = "Managed by Terraform - Compute warehouse cluster for ${var.env_prefix}."
  warehouse_size = var.data_science_wh_size 
  auto_suspend   = 60
  auto_resume    = true
}

resource "snowflake_warehouse" "hr_analyst_wh" {
  name           = "${upper(var.env_prefix)}_HR_ANALYST_WH"
  comment        = "Managed by Terraform - Compute warehouse cluster for ${var.env_prefix}."
  warehouse_size = var.warehouse_size

  auto_suspend   = 60   # Automatically shuts down after 1 minute of silence to save money!
  auto_resume    = true # Wakes up automatically when a query hits it
}


