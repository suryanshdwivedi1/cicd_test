provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "hello" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = var.instance_type

  tags = {
    Name        = "hello-${var.environment}"
    Environment = var.environment
  }
}