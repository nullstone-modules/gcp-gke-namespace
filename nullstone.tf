data "ns_workspace" "this" {}

// Generate a random suffix to ensure uniqueness of resources
resource "random_string" "resource_suffix" {
  length  = 5
  lower   = true
  upper   = false
  numeric = false
  special = false
}

locals {
  stack_name = data.ns_workspace.this.stack_name
  block_name = data.ns_workspace.this.block_name
  env_name   = data.ns_workspace.this.env_name

  labels = {
    // k8s-recommended labels
    "app.kubernetes.io/name"       = local.block_name
    "app.kubernetes.io/part-of"    = local.stack_name
    "app.kubernetes.io/managed-by" = "nullstone"
    // nullstone labels
    "nullstone.io/stack" = local.stack_name
    "nullstone.io/block" = local.block_name
    "nullstone.io/env"   = local.env_name
    "nullstone.io/ref"   = data.ns_workspace.this.block_ref
  }
}
