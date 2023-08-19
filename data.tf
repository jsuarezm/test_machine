data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["591542846629"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "name"

    values = ["al2023-ami-2023.*-x86_64"]
  }
}