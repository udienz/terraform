resource "null_resource" "qa-udienz.id-blog" {
  name = "blog.udienz.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
