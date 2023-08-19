data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["amazon"]
  name_regex = "^al2023-ami-2023.*kernel-6.1-x86_64"

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}