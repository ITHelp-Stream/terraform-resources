provider "aws" {
  region     = "us-east-2"
  access_key = "XXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXX"
}
resource "aws_instance" "myserver" {
  ami           = "${var.image-id}"
  instance_type = "${var.instance-type}"
  #count = 2

  tags = {
    Name = "terraform-server"
  }
}


