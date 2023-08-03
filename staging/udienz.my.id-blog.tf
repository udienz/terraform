resource "null_resource" "staging-udienz.my.id-blog" {
  name = "blog.udienz.my.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
