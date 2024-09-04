resource "aws_security_group" "sraj_allow_ssh" {
  name        = "sraj_allow_ssh"
  description = "Security group for SSH access"
  vpc_id      = "vpc-0e4e61e962a636722"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "sraj_instance" {
  ami                    = var.ami_id
  instance_type          = var.ec2_type
  vpc_security_group_ids = [aws_security_group.sraj_allow_ssh.id]
  subnet_id              = "subnet-077b5d0dacaeb365f"
  tags = {
    Name = "sraj_instance"
  }
}
