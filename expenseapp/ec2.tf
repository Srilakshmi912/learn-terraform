resource "aws_instance" "frontend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg-06c54396da2c245fb]
  tags = {
    Name="frontend"
  }
}


resource "aws_instance" "backend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg-06c54396da2c245fb]
  tags = {
    Name="backend"
  }
}


resource "aws_instance" "mysql" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg-06c54396da2c245fb]
  tags = {
    Name="mysql"
  }
}