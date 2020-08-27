resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "terraform-igw"
    Environment = var.environment_tag
  }
}
resource "aws_eip" "EIP" {
    vpc = true
    tags = {
        Name = "EIP"
    }
}
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.EIP.id
  subnet_id     = aws_subnet.subnet_public1.id
  tags = {
    Name = "terraform-ngw"
    Environment = var.environment_tag
  }

}