#======================
# RDS instance creation
#======================
resource "aws_db_instance" "main_rds_instance" {
  identifier                = var.rds_instance_name
  allocated_storage         = var.rds_allocated_storage
  engine                    = var.rds_engine_type
  engine_version            = var.rds_engine_version
  instance_class            = var.rds_instance_class
  name                      = var.rds_database_name
  snapshot_identifier       = var.rds_snapshot_identifier
  username                  = var.rds_database_username
  password                  = var.rds_database_password
  vpc_security_group_ids    = [ var.rds_security_group_id ]
  db_subnet_group_name      = aws_db_subnet_group.db_subnet_group.name
  parameter_group_name      = coalesce(join("", aws_db_parameter_group.default.*.name), var.rds_param_group_name)
  option_group_name         = var.rds_option_group_name
  multi_az                  = var.rds_multi_az
  storage_type              = var.rds_storage_type
  final_snapshot_identifier = var.rds_instance_name-final
  copy_tags_to_snapshot     = var.rds_copy_tags_to_snapshot
  publicly_accessible       = var.rds_publicly_accessible
  backup_retention_period   = var.rds_backup_retention_period
  backup_window             = coalesce(var.rds_backup_window, lookup(var.rds_backup_window_defaults, var.global_region))
  apply_immediately         = var.rds_apply_immediately
  skip_final_snapshot       = var.rds_skip_final_snapshot
  storage_encrypted         = var.rds_storage_encrypted
  kms_key_id                = var.rds_kms_key_arn
  license_model             = var.rds_license_model

  lifecycle {
    create_before_destroy = true
  }

}

resource "aws_db_parameter_group" "default" {
  name        = var.rds_instance_name
  count       = var.rds_use_default_param_group ? 1 : 0
  family      = var.rds_parameter_group_family
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name        = var.rds_instance_name-subnetgroup
  subnet_ids  =  [ var.rds_private_subnets ]

  lifecycle {
    create_before_destroy = true
  }
}
