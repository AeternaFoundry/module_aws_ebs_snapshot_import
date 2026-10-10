output "ebs_snapshot_imports_id" {
  description = "Map of id values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ebs_snapshot_imports_arn" {
  description = "Map of arn values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ebs_snapshot_imports_client_data" {
  description = "Map of client_data values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => one(v.client_data) if v.client_data != null && length(v.client_data) > 0 }
}
output "ebs_snapshot_imports_data_encryption_key_id" {
  description = "Map of data_encryption_key_id values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.data_encryption_key_id if v.data_encryption_key_id != null && length(v.data_encryption_key_id) > 0 }
}
output "ebs_snapshot_imports_description" {
  description = "Map of description values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ebs_snapshot_imports_disk_container" {
  description = "Map of disk_container values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => one(v.disk_container) if v.disk_container != null && length(v.disk_container) > 0 }
}
output "ebs_snapshot_imports_encrypted" {
  description = "Map of encrypted values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.encrypted if v.encrypted != null }
}
output "ebs_snapshot_imports_kms_key_id" {
  description = "Map of kms_key_id values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "ebs_snapshot_imports_outpost_arn" {
  description = "Map of outpost_arn values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.outpost_arn if v.outpost_arn != null && length(v.outpost_arn) > 0 }
}
output "ebs_snapshot_imports_owner_alias" {
  description = "Map of owner_alias values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.owner_alias if v.owner_alias != null && length(v.owner_alias) > 0 }
}
output "ebs_snapshot_imports_owner_id" {
  description = "Map of owner_id values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "ebs_snapshot_imports_permanent_restore" {
  description = "Map of permanent_restore values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.permanent_restore if v.permanent_restore != null }
}
output "ebs_snapshot_imports_region" {
  description = "Map of region values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ebs_snapshot_imports_role_name" {
  description = "Map of role_name values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}
output "ebs_snapshot_imports_storage_tier" {
  description = "Map of storage_tier values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.storage_tier if v.storage_tier != null && length(v.storage_tier) > 0 }
}
output "ebs_snapshot_imports_tags" {
  description = "Map of tags values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ebs_snapshot_imports_tags_all" {
  description = "Map of tags_all values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ebs_snapshot_imports_temporary_restore_days" {
  description = "Map of temporary_restore_days values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.temporary_restore_days if v.temporary_restore_days != null }
}
output "ebs_snapshot_imports_volume_id" {
  description = "Map of volume_id values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.volume_id if v.volume_id != null && length(v.volume_id) > 0 }
}
output "ebs_snapshot_imports_volume_size" {
  description = "Map of volume_size values across all ebs_snapshot_imports, keyed the same as var.ebs_snapshot_imports"
  value       = { for k, v in aws_ebs_snapshot_import.ebs_snapshot_imports : k => v.volume_size if v.volume_size != null }
}

