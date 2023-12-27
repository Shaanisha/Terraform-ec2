resource "aws_instance" "myinstance" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "ubuntu-1"
  }
}