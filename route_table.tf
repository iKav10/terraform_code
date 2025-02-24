resource "aws_route_table" "kavish_public_route" {
  vpc_id = aws_vpc.kavish_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.kavish_igw.id
  }

  tags = {
    Name = "public_route"
  }
}

resource "aws_route_table" "kavish_private_route" {
  vpc_id = aws_vpc.kavish_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.kavish_ngw.id
  }

  tags = {
    Name = "private_route"
  }
}

resource "aws_route_table_association" "public_subnet_1a_association" {
    subnet_id = aws_subnet.public_subnet_1a.id
    route_table_id = aws_route_table.kavish_public_route.id
  
}

resource "aws_route_table_association" "public_subnet_1b_association" {
    subnet_id = aws_subnet.public_subnet_1b.id
    route_table_id = aws_route_table.kavish_public_route.id
  
}

resource "aws_route_table_association" "private_subnet_1a_association" {
    subnet_id = aws_subnet.private_subnet_1a.id
    route_table_id = aws_route_table.kavish_private_route.id
  
}

resource "aws_route_table_association" "private_subnet_1b_association" {
    subnet_id = aws_subnet.private_subnet_1b.id
    route_table_id = aws_route_table.kavish_private_route.id
  
}