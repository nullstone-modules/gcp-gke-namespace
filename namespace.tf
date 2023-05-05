locals {
  k8s_namespace = local.env_name
}

resource "kubernetes_namespace_v1" "this" {
  metadata {
    name   = local.k8s_namespace
    labels = local.labels
  }
}
