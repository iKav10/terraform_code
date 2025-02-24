resource "aws_eip" "kavish_eip" {
  #domain   = "vpc"
  depends_on = [ aws_internet_gateway.kavish_igw ]
}

output "ipv4_address" {
value = aws_eip.kavish_eip.public_ip
  
}