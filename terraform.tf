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

provider "kypo" {
  endpoint  = local.endpoint
  client_id = "bzhwmbxgyxALbAdMjYOgpolQzkiQHGwWRXxm"
}

locals {
  stages   = toset(["user-ansible", "networking-ansible", "terraform"])
  endpoint = "https://images.crp.kypo.muni.cz"
}

variable "CI_PROJECT_URL" {}
variable "CI_COMMIT_SHA" {}

resource "kypo_sandbox_definition" "definition" {
  url = replace(var.CI_PROJECT_URL, "/https://([^/]+)/(.+)/", "git@$1:$2.git")
  rev = var.CI_COMMIT_SHA
}

resource "kypo_sandbox_pool" "pool" {
  definition = {
    id = kypo_sandbox_definition.definition.id
  }
  max_size = 2
}

resource "kypo_sandbox_allocation_unit" "sandbox" {
  pool_id                       = kypo_sandbox_pool.pool.id
  warning_on_allocation_failure = true
}

data "kypo_sandbox_request_output" "output" {
  id    = kypo_sandbox_allocation_unit.sandbox.allocation_request.id
  stage = each.key

  for_each = local.stages
}

resource "local_file" "output" {
  content         = data.kypo_sandbox_request_output.output[each.key].result
  filename        = "p${kypo_sandbox_pool.pool.id}-s${kypo_sandbox_allocation_unit.sandbox.id}-${each.key}.txt"
  file_permission = "666"

  for_each = local.stages
}

resource "null_resource" "check" {
  triggers = {
    stages = join(", ", kypo_sandbox_allocation_unit.sandbox.allocation_request.stages)
  }

  lifecycle {
    postcondition {
      condition     = join(", ", kypo_sandbox_allocation_unit.sandbox.allocation_request.stages) == "FINISHED, FINISHED, FINISHED"
      error_message = "Allocation has finished with errors"
    }
  }
}

output "pool_url" {
  value = "${local.endpoint}/pool/${kypo_sandbox_pool.pool.id}"
}
