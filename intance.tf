resource "aws_key_pair" "tester" {
  key_name   = "tester-key"
  public_key = "file(id_rsa.pub)"
}

resource "aws_instance" "test" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.test-sg.id]
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true
  key_name                    = aws_key_pair.tester.key_name
  user_data                   = file("bootstrap.sh")
  root_block_device {
    volume_size           = 30
    delete_on_termination = true
  }

  tags = {
    Name = "${var.prefix}-Server-Test"
  }
}

output "public_ip" {
  description = "The public IP address assigned to the instance"
  value       = aws_instance.test.public_ip
}


