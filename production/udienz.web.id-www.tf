resource "null_resource" "production-udienz_web_id-www" {
  name = "www.udienz.web.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
