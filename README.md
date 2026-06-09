# gcp-gke-namespace
A Terraform module to create a Nullstone cluster namespace for kubernetes running on GCP GKE.

## Inputs

| Name   | Description                                                                                          | Default                 |
|--------|------------------------------------------------------------------------------------------------------|-------------------------|
| `name` | The name of the Kubernetes namespace to create. If left blank, the current environment name is used. | `""` (environment name) |

### Name interpolation

When setting `name`, the following identifiers are interpolated into their final values:

| Identifier              | Replaced with                                                            |
|-------------------------|--------------------------------------------------------------------------|
| `{{ random() }}`        | A random 5-character suffix that is stable for the life of the namespace |
| `{{ NULLSTONE_ORG }}`   | The Nullstone organization name                                          |
| `{{ NULLSTONE_STACK }}` | The Nullstone stack name                                                 |
| `{{ NULLSTONE_BLOCK }}` | The Nullstone block name                                                 |
| `{{ NULLSTONE_ENV }}`   | The Nullstone environment name                                           |
