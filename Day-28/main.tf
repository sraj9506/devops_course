terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16"
    }
  }
  required_version = ">=1.2.0"
}
provider "aws" {
  region = var.region_name
}
resource "aws_vpc" "sraj_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "sraj_vpc"
  }
}
resource "aws_subnet" "sraj_subnet" {
  vpc_id            = aws_vpc.sraj_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "sraj_subnet"
  }
}
resource "aws_subnet" "sraj_subnet_opt" {
  vpc_id            = aws_vpc.sraj_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name = "sraj_subnet_opt"
  }
}
resource "aws_internet_gateway" "sraj_internet_gateway" {
  vpc_id = aws_vpc.sraj_vpc.id
  tags = {
    Name = "sraj_internet_gateway"
  }
}
resource "aws_route_table" "sraj_route_table" {
  vpc_id = aws_vpc.sraj_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sraj_internet_gateway.id
  }

  tags = {
    Name = "sraj_route_table"
  }
}
resource "aws_route_table_association" "sraj_route_table_association" {
  subnet_id      = aws_subnet.sraj_subnet.id
  route_table_id = aws_route_table.sraj_route_table.id
}
resource "aws_security_group" "sraj_security_group" {
  name        = "sraj_security_group"
  description = "Allow HTTP and SSH access"
  vpc_id      = aws_vpc.sraj_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sraj_security_group"
  }
}
resource "aws_instance" "sraj_instance" {
  ami             = var.ami_id
  instance_type   = var.ec2_type
  subnet_id       = aws_subnet.sraj_subnet.id
  security_groups = [aws_security_group.sraj_security_group.id]

  tags = {
    Name = "sraj_instance"
  }
}
resource "aws_db_subnet_group" "sraj_db_subnet_group" {
  name       = "sraj_db_subnet_group"
  subnet_ids = [aws_subnet.sraj_subnet.id,aws_subnet.sraj_subnet_opt.id]

  tags = {
    Name = "sraj_db_subnet_group"
  }
}
resource "aws_db_instance" "sraj_mysql_db" {
  identifier             = "sraj-mysql-db"
  engine                 = "mysql"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  name                   = var.db_name
  username               = var.db_user
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.sraj_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.sraj_security_group.id]
  publicly_accessible    = true
  tags = {
    Name = "sraj_mysql_db"
  }
}
