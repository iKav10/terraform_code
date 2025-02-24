resource "aws_subnet" "public_subnet_1a" {
  vpc_id     = aws_vpc.kavish_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet_1a"
  }
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_1a
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id     = aws_vpc.kavish_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public_subnet_1b"
  }
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_1b
}


resource "aws_subnet" "private_subnet_1a" {
  vpc_id     = aws_vpc.kavish_vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "private_subnet_1a"
  }
  availability_zone       = var.availability_zone_1a
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id     = aws_vpc.kavish_vpc.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "private_subnet_1b"
  }
  availability_zone       = var.availability_zone_1b
}