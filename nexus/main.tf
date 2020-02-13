resource "aws_instance" "nexus-server" {
ami	          = "${var.AMIS}"
instance_type = "${var.INSTANCE_TYPE}"
key_name      = "${var.MY_KEY}"
user_data     = "${file("install_nexus.sh")}"

tags = {
 name = "nexus-server"
 }
}

output "ip" {
 value= "${aws_instance.nexus-server.public_ip}"
}