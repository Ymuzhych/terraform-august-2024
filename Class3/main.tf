provider aws {
    region = "us-east-2"
}

# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = file("~/.ssh/id_rsa.pub")
#   }

resource "aws_instance" "web" {
  ami           = "ami-050cd642fd83388e4"
  instance_type = "t2.micro"
  #availability_zone = "us-east-2b"

  subnet_id = "subnet-028545bea9589e1d6"

 # key_name = aws_key_pair.deployer.key_name

  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]

  tags = {
    Name = "HelloWorld"
  }
}
output "ec2" {
  value = aws_instance.web.public_ip
}