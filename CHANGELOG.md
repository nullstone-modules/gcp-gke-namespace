# 0.3.0 (June 09, 2026)
* Added a `name` variable to override the namespace name (defaults to the environment name).
* Added support for interpolation of `{{ random() }}`, `{{ NULLSTONE_STACK }}`, `{{ NULLSTONE_BLOCK }}`, and `{{ NULLSTONE_ENV }}` in the namespace name.

# 0.2.1 (May 01, 2026)
* Added `project_id` and `region` to outputs.

# 0.2.0 (Dec 11, 2025)
* Migrated from 'terraform' to 'tofu'.

# 0.1.4 (Jan 29, 2025)
* Move `external-secrets.io` secret store to cluster module.

# 0.1.3 (Dec 11, 2024)
* Cluster CA certificate is no longer marked as a sensitive output because it's used to verify server identity.

# 0.1.2 (Nov 27, 2024)
* Upgrade TF providers.

# 0.1.1 (May 05, 2023)
* Ensure external secrets depends on the namespace.

# 0.1.0 (Mar 30, 2023)
* Initial draft
