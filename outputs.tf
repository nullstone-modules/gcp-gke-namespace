output "kubernetes_namespace" {
  value       = kubernetes_namespace.this.metadata.0.name
  description = "The namespace in kubernetes"
}

output "cluster_id" {
  value       = local.cluster_id
  description = "string ||| Identifier for GKE cluster (format: projects/{{project}}/locations/{{zone}}/clusters/{{name}})"
}

output "cluster_endpoint" {
  value       = local.cluster_endpoint
  description = "string ||| The IP address of this cluster's Kubernetes master."
}

output "cluster_ca_certificate" {
  value       = local.cluster_ca_certificate
  description = "string ||| base64-encoded public certificate used by clients to authenticate to the cluster endpoint."
  sensitive   = true
}
