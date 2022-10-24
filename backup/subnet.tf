resource "aws_subnet" "public_az_packer" {
  vpc_id                  = aws_vpc.packer_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet_packer"
  }
}