# provider "aws" {
#   region = "ap-south-1"
# }

# resource "aws_instance" "hello" {
#   ami           = "ami-08e3b3155fc937a94"
#   instance_type = var.instance_type

#   tags = {
#     Name        = "hello-${var.environment}"
#     Environment = var.environment
#   }
# }
provider "aws" {
  region = "ap-south-1"
}

data "aws_ssm_parameter" "amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "hello" {
  ami           = data.aws_ssm_parameter.amazon_linux.value
  instance_type = var.instance_type

  tags = {
    Name        = "hello-${var.environment}"
    Environment = var.environment
  }
}