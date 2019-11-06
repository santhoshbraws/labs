provider "aws" {
   region = "${var.region}"
}

resource "aws_instance" "web_server" {
  instance_type = "${var.instance_type}"
  ami           = "${var.ami}"
  count         = 1
  subnet_id     = "${var.subnet_id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
}
