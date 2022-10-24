resource "aws_instance" "my_public_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.small"
  subnet_id              = data.aws_subnet.public_az_a.id
  vpc_security_group_ids = [aws_security_group.sg_packer.id]
  key_name               = "id_rsa"

  tags = {
      Name = "aws_my_image_instance"
  }
}