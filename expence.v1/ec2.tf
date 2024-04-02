resource "aws_instance" "frontend"{
  ami = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00c2949e503e295c2"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend"{
  ami = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00c2949e503e295c2"]
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql"{
  ami = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00c2949e503e295c2"]
  tags = {
    Name = "mysql"
  }
}
