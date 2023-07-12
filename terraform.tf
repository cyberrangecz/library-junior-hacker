terraform {
  backend "http" {
  }
  required_providers {
    kypo = {
      source  = "vydrazde/kypo"
      version = ">= 0.1.0"
    }
  }
}

locals {
  endpoint = "https://images.crp.kypo.muni.cz"
  pool_url = "${local.endpoint}/pool/${module.sandbox.pool_id}"
}

variable "CI_PROJECT_URL" {}
variable "CI_COMMIT_SHA" {}

provider "kypo" {
  endpoint  = local.endpoint
  client_id = "bzhwmbxgyxALbAdMjYOgpolQzkiQHGwWRXxm"
}

module "sandbox" {
  source      = "vydrazde/sandbox/kypo"
  project_url = var.CI_PROJECT_URL
  rev         = var.CI_COMMIT_SHA
}

resource "local_file" "pool_url" {
  filename = "vars.env"
  content  = "POOL_URL=${local.pool_url}"
}

output "pool_url" {
  value = local.pool_url
}
