variable "ami_id" {
  description = "The ID of the AMI to use for the instance."
}

variable "instance_type" {
  description = "The instance type to use for the instance."
}

variable "key_name" {
  description = "The name of the EC2 key pair to use."
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in."
}

variable "aws_security_group_id" {
    description = "The ID of the security group to associate with the instance."
}

variable "tags" {
    description = "This variable represents environment"
}

variable "associate_public_ip_address" {
    description = "This variable represents pulic ip address for instance"
}
variable "iam_instance_profile" {
  description = "This variable represents instance profile"
}