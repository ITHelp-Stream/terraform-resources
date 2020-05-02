/*resource "aws_instance" "ec2-instance" {
   ami = "ami-0f7919c33c90f5b58"
   instance_type = var.instance_type[count.index]
   count = var.count_value
}

variable "instance_type" {
  type = list
}

variable "count_value"{
    default = 3
    
} */

resource "aws_instance" "dev-instance" {
  ami           = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"
  count         = var.myval == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-0f7919c33c90f5b58"
  instance_type = "t2.large"
  count         = var.myval == false ? 2 : 0
}

variable "myval" {
  default = true
}