resource "aws_instance" "sonarqube" {
ami	          = "${var.AMIS}"
instance_type = "${var.INSTANCE_TYPE}"
key_name      = "${var.MY_KEY}"
user_data     = "${file("install_sonar.sh")}"

tags = {
 name = "sonarqube"
 }
}

output "ip" {
 value= "${aws_instance.sonarqube.public_ip}"
}