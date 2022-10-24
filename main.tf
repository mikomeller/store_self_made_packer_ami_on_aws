data "aws_vpc" "Talent-Academy" {
    filter {
        name = "tag:Project" 
        values = ["Talent-Academy"]
    }
}

data "aws_subnet" "public_az_a" {
  filter {
    name   = "tag:Name"
    values = ["public_az_a"]
  }
}

data "aws_ami" "ubuntu" {
  owners = ["787786425565"]

  filter {
    name = "name"
    values = ["apache-on-ubuntu"]
  }
}