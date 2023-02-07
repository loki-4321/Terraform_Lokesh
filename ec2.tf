resource "aws_instance" "example" {
  count         = 2
  ami           = "ami-06984ea821ac0a879"
  instance_type = "t2.micro"
    tags = {
    Name  = "Terraform"
    Batch = "5AM"
  }
  }

