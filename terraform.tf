terraform {
  backend "http" {
  }
  required_providers {
    kypo = {
      source  = "vydrazde/kypo"
    }
  }
}

variable "KYPO_ENDPOINT" {}
variable "CI_PROJECT_URL" {}
variable "CI_COMMIT_SHORT_SHA" {}

provider "kypo" {
  endpoint  = var.KYPO_ENDPOINT
}

module "sandbox" {
  source        = "gitlab.ics.muni.cz/muni-kypo-images/sandbox-ci/kypo"
  project_url   = var.CI_PROJECT_URL
  rev           = var.CI_COMMIT_SHORT_SHA
  kypo_endpoint = var.KYPO_ENDPOINT
}

output "pool_url" {
  value = module.sandbox.pool_url
}
