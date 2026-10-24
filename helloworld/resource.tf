
resource "local_file" "foo224" {
  content         = "foo!"
  file_permission = "0444"
  filename        = "${path.module}/welcome2.bar"
}
