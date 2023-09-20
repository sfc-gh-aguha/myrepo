terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "snowflakedemo"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "ag_demo_devops_db" {
  name    = "AG_DEMO_DEVOPS_DB"
  comment = "Database for Snowflake Terraform demo"
}
