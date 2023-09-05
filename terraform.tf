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
}

variable "CI_PROJECT_URL" {}
variable "CI_COMMIT_SHORT_SHA" {}

provider "kypo" {
  endpoint  = local.endpoint
  client_id = "bzhwmbxgyxALbAdMjYOgpolQzkiQHGwWRXxm"
}

module "sandbox" {
  source        = "gitlab.ics.muni.cz/muni-kypo-images/sandbox-ci/kypo"
  project_url   = var.CI_PROJECT_URL
  rev           = var.CI_COMMIT_SHORT_SHA
  kypo_endpoint = local.endpoint
}

output "pool_url" {
  value = module.sandbox.pool_url
}
