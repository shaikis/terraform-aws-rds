# terraform-aws-rds

```
module "rds_mysql" {
  source = "git@github.com:shaikis/terraform-aws-rds.git"

  global_region              = "${var.global_region}"
  rds_instance_name          = "test-db"
  rds_instance_class         = "db.t2.small"
  rds_storage_type           = "gp2"
  rds_allocated_storage      = "20"
  rds_engine_type            = "MariaDB"
  rds_engine_version         = "10.1.14"
  rds_database_name          = "metadata"
  rds_database_username      = "admin"
  rds_database_password      = "testtestest"
  rds_security_group_id      = ["sg-xyz123"]
  rds_parameter_group_family = "mariadb10.1"
  rds_private_subnets        = ["subnet-abc", "subnet-xyz"]
  rds_environment            = "dev"
 }
```