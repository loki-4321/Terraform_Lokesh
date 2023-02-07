resource "aws_s3_bucket" "mys3" {
  bucket = "ieras3"
  acl    = "private"

  tags = {
    Name        = "Mys3"
  }
}