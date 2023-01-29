resource "aws_route_table" "route-Table" {
  depends_on = [
    aws_vpc.vpc-iti,
    aws_internet_gateway.Internet_Gateway
  ]

  vpc_id = aws_vpc.vpc-iti.id

  route {
    cidr_block = var.route-cidr-block 
    gateway_id = aws_internet_gateway.Internet_Gateway.id
  }


  tags = {
    Name = var.route-name
  }
}

resource "aws_route_table" "private-route" {
    vpc_id = aws_vpc.vpc-iti.id
    
    route {
        cidr_block = var.route-cidr-block 
        nat_gateway_id = aws_nat_gateway.prod-nat-gateway.id
    }
    
    tags = {
        Name = var.private-route 
    }
}