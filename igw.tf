resource "aws_internet_gateway" "kavish_igw" {
  vpc_id = aws_vpc.kavish_vpc.id

  tags = {
    Name = "kavish_igw"
  }
}

