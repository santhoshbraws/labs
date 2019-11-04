provider "aws" {
# Credentials to access aws cluster
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
# region = "${var.region}"
}

resource "aws_instance" "web_server" {
  instance_type = "${var.instance_type}"
  ami           = "${var.ami}"
  count         = 1
  subnet_id     = "${var.subnet_id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
}
