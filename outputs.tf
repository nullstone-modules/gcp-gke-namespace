output "cluster_id" {
  value       = local.cluster_id
  description = "string ||| Identifier for GKE cluster (format: projects/{{project}}/locations/{{zone}}/clusters/{{name}})"
}

output "cluster_name" {
  value       = local.cluster_name
  description = "string ||| The name of the GKE cluster"
}

output "cluster_endpoint" {
  value       = local.cluster_endpoint
  description = "string ||| The IP address of this cluster's Kubernetes master."
}

output "cluster_ca_certificate" {
  value       = local.cluster_ca_certificate
  description = "string ||| base64-encoded public certificate used by clients to authenticate to the cluster endpoint."
}

output "kubernetes_namespace" {
  value       = local.k8s_namespace
  description = "The namespace in kubernetes"
}
