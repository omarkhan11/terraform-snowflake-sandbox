resource "snowflake_warehouse" "crm_gb_wh" {
  name           = "CRM_GLB_WH" # Hardcoded universal name for the team
  comment        = "Managed by Terraform - Single shared X-Small compute node for the CRM team."
  warehouse_size = "XSMALL"

  auto_suspend   = 60
  auto_resume    = true
}