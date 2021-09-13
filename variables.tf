 variable "rds_instance_name"{}
 variable "rds_allocated_storage"{}
 variable "rds_engine_type"{}
 variable "rds_engine_version"{}
 variable "rds_instance_class"{}
 variable "rds_database_name"{}
 variable "rds_snapshot_identifier"{}
 variable "rds_database_username"{}
 variable "rds_database_password"{}
 variable "rds_option_group_name"{}
 variable "rds_multi_az"{
     default = false
 }
 variable "rds_storage_type"{}
 variable "rds_copy_tags_to_snapshot"{
     default = true
 }
 variable "rds_publicly_accessible"{}
 variable "rds_backup_retention_period"{}
 variable "rds_apply_immediately"{
     default = false
 }
 variable "rds_skip_final_snapshot"{
     default = false
 }
 variable "rds_storage_encrypted"{
     default = false
 }
 variable "rds_kms_key_arn"{}
 variable "rds_license_model"{}
 variable "rds_use_default_param_group" {}
 variable "rds_parameter_group_family" { }
 variable "rds_private_subnets" {}
 variable "rds_backup_window" {
     default = ""   
 }

 variable "rds_backup_window_defaults" {
     type = map
       default = {
         us-west-2      = "06:00-14:00" # US West (Oregon)
         us-west-1      = "06:00-14:00" # US West (N. California)
         us-east-2      = "03:00-11:00" # US East (Ohio)
         us-east-1      = "03:00-11:00" # US East (N. Virginia)
         ap-south-1     = "16:30-00:30" # Asia Pacific (Mumbai)
         ap-northeast-2 = "13:00-21:00" # Asia Pacific (Seoul)
         ap-southeast-1 = "14:00-22:00" # Asia Pacific (Singapore)
         ap-southeast-2 = "12:00-20:00" # Asia Pacific (Sydney)
         ap-northeast-1 = "13:00-21:00" # Asia Pacific (Tokyo)
         ca-central-1   = "06:29-14:29" # Canada (Central)
         eu-central-1   = "20:00-04:00" # EU (Frankfurt)
         eu-west-1      = "22:00-06:00" # EU (Ireland)
         eu-west-2      = "06:00-14:00" # EU (London)
         sa-east-1      = "23:00-07:00" # South America (São Paulo)
         us-gov-west-1  = "03:00-11:00" # AWS GovCloud (US)
         cn-north-1     = "06:00-14:00" # China (Beijing)
  }
   
 }