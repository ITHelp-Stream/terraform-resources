variable "ami" {
  type = map
  default = {
    "us-east-2"  = "ami-0f7919c33c90f5b58"
    "us-west-2"  = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0470e33cd681b2476"
  }
}

variable "region" {
  default = "ap-south-1"
}

variable "tags" {
  type    = list
  default = ["ec2-instance1", "ec2-instance2"]
}
