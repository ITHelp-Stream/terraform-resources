variable "instance_type" {
  type = map

  default = {
    default = "t2.micro"
    develop = "t2.medium"
    prod = "t2.large"
  }
}
