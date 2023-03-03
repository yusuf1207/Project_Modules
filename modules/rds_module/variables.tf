variable "identifier" {
  type        = string
  description = "The identifier for the RDS instance"
}

variable "engine" {
  type        = string
  description = "The name of the database engine to be used for this DB instance"
}

variable "engine_version" {
  type        = string
  description = "The version number of the database engine to be used for this DB instance"
}

variable "instance_class" {
  type        = string
  description = "The instance class of the RDS instance"
}

variable "allocated_storage" {
  type        = number
  description = "The amount of storage to be allocated for the RDS instance"
}

variable "name" {
  type        = string
  description = "The name of the database to be created when the RDS instance is created"
}

variable "username" {
  type        = string
  description = "The username for the master user of the RDS instance"
}

variable "password" {
  type        = string
  description = "The password for the master user of the RDS instance"
}

variable "parameter_group_name" {
  type        = string
  description = "The name of the parameter group to be associated with the RDS instance"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "A list of security group IDs to associate with the RDS instance"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Specifies whether a final DB snapshot is created before the RDS instance is deleted"
}