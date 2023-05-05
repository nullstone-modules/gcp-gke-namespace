// We are going to configure the kubernetes namespace with a secrets store
// This secrets store will provide storage of secrets in google secrets manager instead of kubernetes storage
// We found two libraries to achieve:
//   - Secrets Store CSI Driver: https://secrets-store-csi-driver.sigs.k8s.io/
//   - External Secrets Operator (ESO): https://external-secrets.io/
// Secrets Store CSI Driver is mentioned by the Google Cloud docs; however, their documentation is poor with limited driver support
// ESO has extensive documentation, broad secret provider support, and generators (not used yet, but could be useful to teams)

resource "helm_release" "gsm-external-secrets" {
  name       = "external-secrets"
  repository = "https://charts.external-secrets.io"
  chart      = "external-secrets"
  namespace  = local.k8s_namespace

  depends_on = [kubernetes_namespace_v1.this]
}
