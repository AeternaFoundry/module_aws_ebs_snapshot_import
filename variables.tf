variable "ebs_snapshot_imports" {
  description = <<EOT
Map of ebs_snapshot_imports, attributes below
Required:
    - disk_container (block):
        - description (optional)
        - format (required)
        - url (optional)
        - user_bucket (optional, block):
            - s3_bucket (required)
            - s3_key (required)
Optional:
    - description
    - encrypted
    - kms_key_id
    - permanent_restore
    - region
    - role_name
    - storage_tier
    - tags
    - tags_all
    - temporary_restore_days
    - client_data (block):
        - comment (optional)
        - upload_end (optional)
        - upload_size (optional)
        - upload_start (optional)
EOT

  type = map(object({
    description            = optional(string)
    encrypted              = optional(bool)
    kms_key_id             = optional(string)
    permanent_restore      = optional(bool)
    region                 = optional(string)
    role_name              = optional(string)
    storage_tier           = optional(string)
    tags                   = optional(map(string))
    tags_all               = optional(map(string))
    temporary_restore_days = optional(number)
    disk_container = object({
      description = optional(string)
      format      = string
      url         = optional(string)
      user_bucket = optional(object({
        s3_bucket = string
        s3_key    = string
      }))
    })
    client_data = optional(object({
      comment      = optional(string)
      upload_end   = optional(string)
      upload_size  = optional(number)
      upload_start = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

