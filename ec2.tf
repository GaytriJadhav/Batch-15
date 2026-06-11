provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"
  key_name = "terr-key"
  vpc_security_group_ids = ["sg-0df6a830e151d7b6e"]
  tags = {
    Name = "myec2"
    name = "gaytri"
    env = "dev"
  }
}
