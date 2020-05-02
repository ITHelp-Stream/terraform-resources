provider "aws" {
  region     = "us-east-2"
  access_key = "XXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXX"
}
resource "aws_instance" "demo-server1" {
  ami           = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-server"
  }
}

resource "aws_eip" "eip" {
  vpc = var.vpc_value
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.demo-server1.id
  allocation_id = aws_eip.eip.id
}


output "instance_id" {
  value = aws_instance.demo-server1.id
}

output "instance_public_ip" {
  value = aws_instance.demo-server1.public_ip
}

output "instance_private_ip" {
  value = aws_instance.demo-server1.private_ip
}
