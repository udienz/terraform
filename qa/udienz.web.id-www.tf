resource "null_resource" "qa-udienz.web.id-www" {
  name = "www.udienz.web.id"
  allow_overwrite = true
  type = "A"
  value = "100.64.1.1"
}
