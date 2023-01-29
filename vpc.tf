resource "aws_vpc" "vpc-iti" {

  cidr_block = var.vpc-cidr-block 
  tags       = { "Name" = var.vpc-name }
}