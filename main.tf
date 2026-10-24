provider "aws" {
region ="ap-south-1"
}
data "aws_ami" "amazon-linux" {
most_recent = true
owners= ["amazon"]
filter {
    name= "name"
    values=["al2023-ami-2023.*-x86_64"]
}
}

module "aws_resources" {
    source ="./ec2_module"
    bucket_name = "my-tf-test-bucket1278"
    instance_name="my_ec2"
ami=data.aws_ami.amazon-linux.id
  }