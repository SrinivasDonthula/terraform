provider "aws" {
  region  = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}
resource "aws_instance" "myinstance" {
  ami = "ami-02f26adf094f51167"
  instance_type = "t2.micro"
tags = {
  Name = "Ec2_Instance_Terraform"
}
}
