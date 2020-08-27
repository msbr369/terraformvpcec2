variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "192.168.0.0/16"
}
variable "cidr_publicsubnet1" {
  description = "CIDR block for the subnet"
  default = "192.168.0.0/18"
}
variable "cidr_publicsubnet2" {
  description = "CIDR block for the subnet"
  default = "192.168.64.0/18"
}
variable "cidr_privatesubnet1" {
  description = "CIDR block for the subnet"
  default = "192.168.128.0/18"
}
variable "cidr_privatesubnet2" {
  description = "CIDR block for the subnet"
  default = "192.168.192.0/18"
}
variable "availability_zone1" {
  description = "availability zone to create subnet"
  default = "us-east-1a"
}
variable "availability_zone2" {
  description = "availability zone to create subnet"
  default = "us-east-1b"
}
variable "key_name" {
  description = "key name"
  default = "yourkeypair"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-09d95fab7fff3776c"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Dev"
}
variable "instance_name" {
  description = "Name of the instance"
  default = "Terraform_Instance"
}
