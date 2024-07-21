resource "aws_vpc" "ot_microservices_dev" {
  cidr_block       = "10.0.0.0/25"
  instance_tenancy = "default"
  tags = {
    Name = "ot-micro-vpc"
  }
}

resource "aws_subnet" "public_subnet_1" {
 vpc_id            = aws_vpc.ot_microservices_dev.id
 cidr_block        = "10.0.0.0/28"
 availability_zone = "us-east-2a"
 map_public_ip_on_launch = true
 tags = {
   Name = "Public Subnet 1"
 }
}
