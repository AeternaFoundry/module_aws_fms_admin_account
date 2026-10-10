output "fms_admin_accounts_id" {
  description = "Map of id values across all fms_admin_accounts, keyed the same as var.fms_admin_accounts"
  value       = { for k, v in aws_fms_admin_account.fms_admin_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fms_admin_accounts_account_id" {
  description = "Map of account_id values across all fms_admin_accounts, keyed the same as var.fms_admin_accounts"
  value       = { for k, v in aws_fms_admin_account.fms_admin_accounts : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}

