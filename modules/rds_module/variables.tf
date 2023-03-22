variable "allocated_storage" {
  type        = number
  description = "The amount of storage to be allocated for the RDS instance"
}

variable "db_name" {
  type        = string
  description = "The name of the database to be created when the RDS instance is created"
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

variable "publicly_accessible" {
  type        = bool
  description = "This varible represent publicly accessible added or not"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Specifies whether a final DB snapshot is created before the RDS instance is deleted"
}

variable "final_snapshot_identifier" {
  type        = bool
  description = "This variable represents the final shot is added or not"
}
