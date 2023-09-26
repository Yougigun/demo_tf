resource "aws_instance" "my_instance" {
  ami           = "ami-0ffdb3f5cbcaaf26e"  // Replace with your desired AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-55bee831"
  vpc_security_group_ids = [aws_security_group.demo_terraform_sg.id]

  tags = {
    Name = "demo_terraform"
  }
}
