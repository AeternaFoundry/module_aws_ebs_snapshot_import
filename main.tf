resource "aws_ebs_snapshot_import" "ebs_snapshot_imports" {
  for_each = var.ebs_snapshot_imports

  description            = each.value.description
  encrypted              = each.value.encrypted
  kms_key_id             = each.value.kms_key_id
  permanent_restore      = each.value.permanent_restore
  region                 = each.value.region
  role_name              = each.value.role_name
  storage_tier           = each.value.storage_tier
  tags                   = each.value.tags
  tags_all               = each.value.tags_all
  temporary_restore_days = each.value.temporary_restore_days

  disk_container {
    description = each.value.disk_container.description
    format      = each.value.disk_container.format
    url         = each.value.disk_container.url
    dynamic "user_bucket" {
      for_each = each.value.disk_container.user_bucket != null ? [each.value.disk_container.user_bucket] : []
      content {
        s3_bucket = user_bucket.value.s3_bucket
        s3_key    = user_bucket.value.s3_key
      }
    }
  }

  dynamic "client_data" {
    for_each = each.value.client_data != null ? [each.value.client_data] : []
    content {
      comment      = client_data.value.comment
      upload_end   = client_data.value.upload_end
      upload_size  = client_data.value.upload_size
      upload_start = client_data.value.upload_start
    }
  }
}

