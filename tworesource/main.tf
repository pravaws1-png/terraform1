resource "local_file" "hello" {
  content  = "Hello, ${var.name}Terraform!"
  filename = "${path.module}/hello.txt"
}

output "greeting" {
  value = local_file.hello.content
}