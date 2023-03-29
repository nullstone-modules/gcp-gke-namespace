resource "kubernetes_namespace" "this" {
  metadata {
    name   = local.env_name
    labels = local.labels
  }
}
