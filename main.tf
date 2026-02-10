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
