resource "aws_eip" "nat_gateway" {
    vpc = true
}
resource "aws_nat_gateway" "prod-nat-gateway" {
    allocation_id = aws_eip.nat_gateway.id
    subnet_id     = aws_subnet.public-subnet[0].id

    tags = {
    Name = var.nat
    }
    depends_on = [aws_internet_gateway.Internet_Gateway]
}