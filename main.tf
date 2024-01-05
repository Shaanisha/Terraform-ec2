resource "aws_instance" "myinstance" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
   key_name = "ubuntu_key"
   vpc_security_group_ids = [aws_security_group.instance.id]
  tags = {
    Name = "ubuntu-1"
  }
}

resource "aws_security_group" "instance" {
  name      = "instance"
  description = "allow inbound traffic"


ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all sources (for demonstration purposes)
  }
}

