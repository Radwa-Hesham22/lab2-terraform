resource "aws_route_table_association" "Association" {

  depends_on = [
    aws_vpc.vpc-iti,
    aws_subnet.public-subnet[0],
    aws_route_table.route-Table
  ]

  subnet_id = aws_subnet.public-subnet[0].id

  route_table_id = aws_route_table.route-Table.id
}

resource "aws_route_table_association" "private-association"{
    subnet_id = aws_subnet.public-subnet[1].id
    route_table_id = aws_route_table.private-route.id
}