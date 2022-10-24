
# Subnet associations
resource "aws_route_table_association" "public_as_packer" {
  subnet_id      = aws_subnet.public_az_packer.id
  route_table_id = aws_route_table.rt_public_packer.id
}