variable "profile" {
    type = string 
}
variable "region" {
    type = string
}
variable "vpc-cidr-block" {
    type = string
}
variable "vpc-name" {
    type = string
}
variable "subnet-cidr-block" {
    type = list
}
variable "public-subnet-name" {
    type = list
}

variable "int-gw" {
    type = string 
}
variable "route-cidr-block" {
    type = string
}
variable "route-name" {
    type = string 
}
variable "egress-port" {
    type = number
}
variable "ingress-ssh" {
    type = number
}
variable "ingress-nginx" {
    type = number
}
variable "ami-id" {
    type = string
}
variable "inst-type" {
    type = string
}
variable "public-ip" {
    type = bool 
}
variable "ec2-name" {
    type = string 
}
variable "nat" {
    type = string
}
variable "private-route" {
    type = string
}
variable "map" {
    type =list
}