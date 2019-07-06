provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-09d3a86a9242f7656"
    instance_type = "t2.micro"      
tags = {
name = "srikanth-instance"
}
}
resource "aws_ami_from_instance" "example" {
  name               = "terraform-example"
  source_instance_id = "i-000511e37b7defd56"
tags= {
name= "srikanth-ami"
}
}
