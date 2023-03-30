locals {
  k8s_namespace = local.env_name
}

resource "kubernetes_namespace" "this" {
  metadata {
    name   = local.k8s_namespace
    labels = local.labels
  }
}
