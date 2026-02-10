provider aws {
    region = var.region
}

resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr

  tags = {
    Name = "my-vpc"
  }
}

variable region {}
variable vpc_cidr {}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet1"
  }
}