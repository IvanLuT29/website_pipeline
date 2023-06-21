provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "BaLu Website" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "BaLu WebSite"
  }
}
