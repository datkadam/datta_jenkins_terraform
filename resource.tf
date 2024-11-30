resource "aws_instance" "myinstance" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type


  tags = {
    Name = "Prod-Server"
  }

}
#data block
data "aws_ami" "amazon-linux-3" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"] 
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-tzxxxxxest-bucket"
}

resource "aws_s3_bucket" "example1" {
  bucket = "my-tf-tzxxxxest-bucket"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

