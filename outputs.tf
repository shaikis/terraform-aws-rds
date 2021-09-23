output "rd_instance_id" {
    value = aws_db_instance.main_rds_instance.id
  }

output "rds_instance_address" {
    value = aws_db_instance.main_rds_instance.address
  }

output "rds_instance_port" {
    value = aws_db_instance.main_rds_instance.port
  }
output "rds_instance_endpoint" {
    value = aws_db_instance.main_rds_instance.endpoint
  
}

# configuration details in sigle output variable to pass app servers!!!
output "db_config" {
   value = {
     user     = aws_db_instance.main_rds_instance.username
     password = aws_db_instance.main_rds_instance.password
     database = aws_db_instance.main_rds_instance.name
     hostname = aws_db_instance.main_rds_instance.address
     port     = aws_db_instance.main_rds_instance.port
   }
}
