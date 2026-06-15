resource "snowflake_table" "users_table" {
  database = snowflake_database.env_db.name
  schema   = snowflake_schema.testing.name
  name     = "USERS"
  comment  = "Managed by Terraform - Random user tracking matrix for ${var.env_prefix}."

  column {
    name = "USER_ID"
    type = "NUMBER(38,0)"
  }
  column {
    name = "USERNAME"
    type = "VARCHAR(16777216)"
  }
  column {
    name = "CREATED_AT"
    type = "TIMESTAMP_NTZ(9)"
  }
}

resource "snowflake_table" "sales_table" {
  database = snowflake_database.env_db.name
  schema   = snowflake_schema.testing.name
  name     = "SALES"
  comment  = "Managed by Terraform - Random sales transactional matrix for ${var.env_prefix}."

  column {
    name = "TRANSACTION_ID"
    type = "NUMBER(38,0)"
  }
  column {
    name = "AMOUNT"
    type = "NUMBER(38,2)"
  }
  column {
    name = "PURCHASED_AT"
    type = "TIMESTAMP_NTZ(9)"
  }
}