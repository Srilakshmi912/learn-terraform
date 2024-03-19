resource "aws_instance" "test" {
  ami           = "https://github.com/Srilakshmi912/learn-terraform.git"
  instance_type = "t2.micro"
}