resource "null_resource" "production-udienz.web.id-blog" {
  name = "blog.udienz.web.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
