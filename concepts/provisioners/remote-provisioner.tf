resource "aws_instance" "remote_instance" {
   ami = "ami-0f7919c33c90f5b58"
   instance_type = "t2.micro"
   key_name = "terraform-server"

   provisioner "remote-exec" {
     inline = [
       "sudo amazon-linux-extras install -y nginx1.12",
       "sudo systemctl start nginx"
     ]

   connection {
     type = "ssh"
     user = "ec2-user"
     private_key = file("./terraform-server.pem")
     host = self.public_ip
     host_key = true
   }
   }
}