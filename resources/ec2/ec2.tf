resource "aws_instance" "centos8" {
  ami           = data.aws_ami.centos8.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "terraform test"
  }
}