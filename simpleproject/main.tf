resource "local_file" "foo" {
  content  = "my file is there"
  filename = "${path.module}/hellllll.bar"
}
