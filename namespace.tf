locals {
  // The namespace name defaults to the current environment name unless the user overrides it via var.name.
  // {{ random() }} is interpolated here using the generated resource suffix because it is not a Nullstone
  // env variable; the {{ NULLSTONE_* }} identifiers are interpolated by the ns_env_variables data source below.
  namespace_input = replace(coalesce(var.name, local.env_name), "{{ random() }}", random_string.resource_suffix.result)
  k8s_namespace   = data.ns_env_variables.namespace.env_variables["NAMESPACE"]
}

// Interpolates the {{ NULLSTONE_STACK }}, {{ NULLSTONE_BLOCK }}, and {{ NULLSTONE_ENV }}
// identifiers in the namespace name into their final values.
data "ns_env_variables" "namespace" {
  input_env_variables = {
    NULLSTONE_STACK = local.stack_name
    NULLSTONE_BLOCK = local.block_name
    NULLSTONE_ENV   = local.env_name
    NAMESPACE       = local.namespace_input
  }
  input_secrets = {}
}

resource "kubernetes_namespace_v1" "this" {
  metadata {
    name   = local.k8s_namespace
    labels = local.labels
  }
}
