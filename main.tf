provider "aws" {
# Credentials to access aws cluster
#  access_key = "${var.access_key}"
#  secret_key = "${var.secret_key}"
  region = "us-east-2"
#  shared_credentials_file = "/var/lib/jenkins/secrets/creds"
}

resource "aws_instance" "web_server" {
  instance_type = "t2.micro"
  ami           = "ami-01a834fd83ae239ff"
  count         = 1
  subnet_id     = "subnet-0305f3b46019989af"
  associate_public_ip_address = "true"
}
