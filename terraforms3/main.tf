provider "aws" {
  region = var.aws_region
}
data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name="name"
    values = ["*hvm*-x86_64"]
  }
}
resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
  
}
