resource "aws_vpc" "ot_microservices_dev" {
  cidr_block       = "10.0.0.0/25"
  instance_tenancy = "default"
  tags = {
    Name = "ot-micro-vpc"
  }
}
