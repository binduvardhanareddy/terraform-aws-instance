variable "os" {
  type = string
  default = "ami-02e136e904f3da870"
}

variable "hw" {
default = "t2.nano"
}

variable "key" {
default = "ed-20Sep"
}

resource "aws_instance" "bindu" {
  ami = var.os
  instance_type = var.hw
  key_name = var.key
  tags = {
    Name = "Bindu-v1"
    Env = "Dev"
  }
}

output "myawsserver-ip" {
  value = aws_instance.bindu.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.bindu.private_ip
}
