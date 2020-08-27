resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.vpc.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "terraform-rtb1"
    Environment = var.environment_tag
  }
}

resource "aws_route_table_association" "rta_subnet_public1" {
  subnet_id      = aws_subnet.subnet_public1.id
  route_table_id = aws_route_table.rtb_public.id
}
resource "aws_route_table_association" "rta_subnet_public2" {
  subnet_id      = aws_subnet.subnet_public2.id
  route_table_id = aws_route_table.rtb_public.id
}
resource "aws_route_table" "rtb_private" {
  vpc_id = aws_vpc.vpc.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.ngw.id
  }
  tags = {
    Name = "terraform-rtb1"
    Environment = var.environment_tag
  }
}
resource "aws_route_table_association" "rta_subnet_private1" {
  subnet_id      = aws_subnet.subnet_private1.id
  route_table_id = aws_route_table.rtb_private.id
}
resource "aws_route_table_association" "rta_subnet_private2" {
  subnet_id      = aws_subnet.subnet_private2.id
  route_table_id = aws_route_table.rtb_private.id
}