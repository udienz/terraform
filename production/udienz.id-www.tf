resource "null_resource" "production-udienz_id-www" {
  name = "www.udienz.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
