resource "null_resource" "production-udienz_my_id-" {
  name = "blog.udienz.my.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}