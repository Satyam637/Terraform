provider "aws" {

  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-04b70fa74e45c3917"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "mavenkey"
  vpc_security_group_ids = ["sg-0d351c2bf9812da3e"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }

}
