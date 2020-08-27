resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-vpc"
    Environment = var.environment_tag
  }
}
resource "aws_subnet" "subnet_public1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_publicsubnet1
  map_public_ip_on_launch = "true"
  availability_zone = var.availability_zone1
  tags = {
    Name = "terraform-pcsubnet1"
    Environment = var.environment_tag
  }
}
resource "aws_subnet" "subnet_public2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_publicsubnet2
  map_public_ip_on_launch = "true"
  availability_zone = var.availability_zone2
  tags = {
    Name = "terraform-pcsubnet2"
    Environment = var.environment_tag
  }
}
resource "aws_subnet" "subnet_private1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_privatesubnet1
  map_public_ip_on_launch = "true"
  availability_zone = var.availability_zone1
  tags = {
    Name = "terraform-pvsubnet1"
    Environment = var.environment_tag
  }
}
resource "aws_subnet" "subnet_private2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_privatesubnet2
  map_public_ip_on_launch = "true"
  availability_zone = var.availability_zone2
  tags = {
    Name = "terraform-pvsubnet2"
    Environment = var.environment_tag
  }
}