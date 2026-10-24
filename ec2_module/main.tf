resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}
resource "aws_instance" "my_ec2" {
    ami= var.ami
    instance_type=var.instance_type
    tags = {
        Name=var.instance_name
    }
}