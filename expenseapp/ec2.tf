// creating three instances in aws using configuration file
//resource is used to create aws instance
//prerequisites to create an instance is ami,instance_type,vpc_security_group_ids
resource "aws_instance" "frontend" {
  ami           = "ami-05f020f5935e52dc4" //go to Images in aws click on AMIs search public images devops-practice
  instance_type = "t2.micro"  //go to instances and click on instance types
  vpc_security_group_ids = ["sg-06c54396da2c245fb"] //network & security allow-all
  tags = { //tags is map containing  key=Name ,value=frontend
    Name="frontend"
  }
}


resource "aws_instance" "backend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-06c54396da2c245fb"]
  tags = {
    Name="backend"
  }
}


resource "aws_instance" "mysql" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-06c54396da2c245fb"]
  tags = {
    Name="mysql"
  }
}