variable "name" {
  type    = string
  default = ""

  description = <<EOF
The name of the Kubernetes namespace to create.
If left blank, the current environment name is used.
The following identifiers are supported for interpolation:
  {{ random() }}
  {{ NULLSTONE_ORG }}
  {{ NULLSTONE_STACK }}
  {{ NULLSTONE_BLOCK }}
  {{ NULLSTONE_ENV }}
EOF
}
