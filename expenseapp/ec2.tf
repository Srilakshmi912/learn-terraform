// creating three instances in aws using configuration file
//resource is used to create aws instance
//prerequisites to create an instance is ami,instance_type,vpc_security_group_ids
resource "aws_instance" "frontend" {
  ami           = var.ami //"ami-05f020f5935e52dc4" //go to Images in aws click on AMIs search public images devops-practice
  instance_type = var.instance_type //"t2.micro"  //go to instances and click on instance types
  vpc_security_group_ids = var.vpc_security_group_ids //["sg-06c54396da2c245fb"] //network & security allow-all
  tags = { //tags is map containing  key=Name ,value=frontend
    Name="frontend"
  }
}


resource "aws_instance" "backend" {
  ami           = var.ami //"ami-05f020f5935e52dc4"
  instance_type = var.instance_type //"t2.micro"
  vpc_security_group_ids =var.vpc_security_group_ids //["sg-06c54396da2c245fb"]
  tags = {
    Name="backend"
  }
}


resource "aws_instance" "mysql" {
  ami           = var.ami //"ami-05f020f5935e52dc4"
  instance_type = var.instance_type //"t2.micro"
  vpc_security_group_ids = var.vpc_security_group_ids //["sg-06c54396da2c245fb"]
  tags = {
    Name="mysql"
  }
}

// In the above code is repetitive i.e ami ,instance_type,vpc_security_group_ids all are same in creating ec2 instance so we can variable to make our code dry

variable "ami" {
  default = "ami-05f020f5935e52dc4"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-06c54396da2c245fb"]
}