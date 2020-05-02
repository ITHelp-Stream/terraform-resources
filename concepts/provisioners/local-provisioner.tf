resource "aws_instance" "service_instance" {
  ami           = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.service_instance.public_ip} >> public_ips.txt"
  }
}