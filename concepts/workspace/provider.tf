provider "aws" {
  region     = "us-east-2"
  access_key = "AXXXXXXXXXXXXXXXXXXXx"
  secret_key = "XXXXXXXXXXXXXXXXXXXX"
}

resource "aws_instance" "service_instance" {
   ami = "ami-0f7919c33c90f5b58"
   instance_type = lookup(var.instance_type,terraform.workspace)
}
