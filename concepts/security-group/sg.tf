provider "aws" {
  region     = "us-east-2"
  access_key = "xxxxxxxxxxxxxxxxxx"
  secret_key = "XXXXXXXXXXXXXXXXXX"
}
resource "aws_security_group" "IThelp_SG" {
  name = "help-SG"

  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = var.protocol
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = var.protocol
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = var.custom_port
    to_port     = var.custom_port
    protocol    = var.protocol
    cidr_blocks = [var.vpn_ip]
  }
}