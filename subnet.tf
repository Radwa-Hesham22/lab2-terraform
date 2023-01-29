resource "aws_subnet" "public-subnet" {
    count =2 
    cidr_block = var.subnet-cidr-block[count.index]
    vpc_id = aws_vpc.vpc-iti.id
    map_public_ip_on_launch = var.map[count.index]
    tags = {
    Name = var.public-subnet-name[count.index]}
  
}