resource "aws_instance" "frontend"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group
  tags = {
  Name = "frontend"
  }
}

resource "aws_instance" "backend"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group
  tags = {
  Name = "backend"
  }
}

resource "aws_instance" "mysql"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group
  tags = {
  Name = "mysql"
  }
}

variable "ami" {
  default = "ami-05f020f5935e52dc4"
}

variable "instance_type" {
  default = " t3.micro"
}

variable "security_group" {
  default = ["sg-00c2949e503e295c2"]
}