output "instance_ips" {
  value = ["${aws_instance.web_server.*.public_ip}"]
}
