resource "null_resource" "staging-udienz_id-" {
  name = "blog.udienz.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
