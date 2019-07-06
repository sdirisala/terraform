provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "myec2" {
    ami = "ami-09d3a86a9242f7656"
    instance_type = "t2.micro"      
tags = {
name = "srikanth-instance"
}
}
