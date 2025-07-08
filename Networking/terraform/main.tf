provider "aws" {
  region     = "eu-west-1"
  access_key = "    "
  secret_key = "    "
}


resource "aws_instance" "ec2" {
  ami           = "ami-01f23391a59163da9"
  instance_type = "t2.micro"
  key_name = "First_Key"
  security_groups = [aws_security_group.sg.name]
  tags = {
    Name = "My_first_EC2_instance"
  }
}