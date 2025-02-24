resource "aws_nat_gateway" "kavish_ngw" {
  allocation_id = aws_eip.kavish_eip.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = "kavish_gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.kavish_igw]
}