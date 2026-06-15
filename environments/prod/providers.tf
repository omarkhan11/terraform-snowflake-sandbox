terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87.0"
    }
  }
}

provider "snowflake" {
  # We use your unique Organization-Account identifier string here
  account  = "MSMMKSJ-JAC28390" 
  user     = "OMARKHAN"
  password = "Iloveruby123$$$" # Put your real secret password string inside the quotes
  role     = "ACCOUNTADMIN"
}