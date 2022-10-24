resource "aws_internet_gateway" "ig_packer" {
  vpc_id = aws_vpc.packer_vpc.id

  tags = {
    Name = "ig_packer"
  }
}