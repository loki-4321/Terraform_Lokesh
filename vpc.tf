
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.main.id}"
  tags = {
    Name        = "private-route-table"
    Environment = "Prod"
  }
}
