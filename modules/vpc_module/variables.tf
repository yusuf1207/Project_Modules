variable "cidr_block" {
  type        = string
  description = "This cidy block is for vpc"
}
variable "public_subnet_1_cidr" {
  type    = string
  description = "This cidr is for public subnet1"
}
variable "public_subnet_2_cidr" {
  type    = string
  description = "This cidr is for public subnet2"
}
variable "private_subnet_1_cidr" {
  type    = string
  description = "This cidr is for private subnet1"
}
variable "private_subnet_2_cidr" {
  type    = string
  description = "This cidr is for private subnet2"
}
variable "availability_zone_1" {
  type    = string
  description = "This is first availability zone"
}
variable "availability_zone_2" {
  type    = string
  description = "This is second availability zone"
}