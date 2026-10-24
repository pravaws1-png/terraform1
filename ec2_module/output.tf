output "instance_id"{
    value= aws_instance.my_ec2.id

}
output "created_bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
 
  
}