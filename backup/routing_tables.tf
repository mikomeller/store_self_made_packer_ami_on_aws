resource "aws_route_table" "rt_public_packer" {
  vpc_id = aws_vpc.packer_vpc.id

  route {
    cidr_block = "0.0.0.0/0" # go anywhere
    gateway_id = aws_internet_gateway.ig_packer.id
  }

  tags = {
    Name = "rt_public_packer"
  }
}

# root table attached to private subnets, they go to NAT, is in public subnet, then 