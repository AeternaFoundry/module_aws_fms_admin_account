variable "fms_admin_accounts" {
  description = <<EOT
Map of fms_admin_accounts, attributes below
Optional:
    - account_id
EOT

  type = map(object({
    account_id = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

