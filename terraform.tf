terraform {
  required_providers {
    kypo = {
      source = "vydrazde/kypo"
      version = "0.1.0-beta"
    }
  }
}

provider "kypo" {
  endpoint  = "https://images.crp.kypo.muni.cz"
  client_id = "bzhwmbxgyxALbAdMjYOgpolQzkiQHGwWRXxm"
}

variable "CI_COMMIT_SHA" {}

resource "kypo_sandbox_definition" "definition" {
  url = "git@gitlab.ics.muni.cz:muni-kypo-trainings/games/junior-hacker.git"
  rev = var.CI_COMMIT_SHA
}

resource "kypo_sandbox_pool" "pool" {
  definition = {
    id = kypo_sandbox_definition.definition.id
  }
  max_size = 2
}

resource "kypo_sandbox_allocation_unit" "sandbox" {
  pool_id = kypo_sandbox_pool.pool.id
}

data "kypo_sandbox_request_output" "user-output" {
  id = kypo_sandbox_allocation_unit.sandbox.allocation_request.id
}

data "kypo_sandbox_request_output" "networking-output" {
  id = kypo_sandbox_allocation_unit.sandbox.allocation_request.id
  stage = "networking-ansible"
}

data "kypo_sandbox_request_output" "terraform-output" {
  id = kypo_sandbox_allocation_unit.sandbox.allocation_request.id
  stage = "terraform"
}

resource "local_file" "user-output" {
  content  = data.kypo_sandbox_request_output.user-output.result
  filename = "user-ansible.txt"
}

resource "local_file" "networking-output" {
  content  = data.kypo_sandbox_request_output.networking-output.result
  filename = "networking-ansible.txt"
}

resource "local_file" "terraform-output" {
  content  = data.kypo_sandbox_request_output.terraform-output.result
  filename = "terraform.txt"
}
