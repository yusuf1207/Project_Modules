resource "aws_db_instance" "db_instance" {
  identifier             = var.identifier
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  name                   = var.name
  username               = var.username
  password               = var.password
  parameter_group_name   = var.parameter_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot    = var.skip_final_snapshot
}